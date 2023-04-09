import ConferenceSelect from "./ConferenceSelect";
import TeamSelect from "./TeamSelect";
import { useState,useEffect } from "react";
import NameEntry from "./NameEntry";
import { useNavigate } from "react-router-dom";

export default function Setup({updateUserID}){
    const [conferences, setConferences] = useState([]);
    const [selectedConferenceID, setSelectedConferenceID] = useState(null);
    const [teams, setTeams] = useState([]);
    const [selectedTeamID, setSelectedTeamID] = useState(null);
    const [userID, setUserID] = useState(0);

    //use navigate
    const navigate = useNavigate();

    const updateTeamID = (e) => {
        setSelectedTeamID(e.target.value);
    }

    const updateConferenceID = (e) => {
        setSelectedConferenceID(e.target.value);
        setSelectedTeamID(null);

        // update teams state
        if (e.target.value !== "default"){
            const selectedConference = conferences.filter(c => {
                return c.id == e.target.value;
            })
            setTeams(selectedConference[0].teams);
        }
    }

    // load conferences from API
    useEffect(() => {
      fetch("/conferences")
        .then((r) => r.json())
        .then((data) => setConferences(data))
    }, []);

    const handleFinishSetup = (name) => {
        const newUser = {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({name: name, team_id: selectedTeamID})
        };
        fetch("/users", newUser)
        .then(res => res.json())
        .then(user => updateUserID(user.id))
        .then(() => navigate('/welcome'))
    }

    return (
        <div>
            <ConferenceSelect conferences={conferences} updateConferenceID={updateConferenceID}/>
            {selectedConferenceID !== "default" ? <TeamSelect teams={teams} updateTeamID={updateTeamID}/> : null}
            {selectedConferenceID !=="default" && selectedTeamID ? <NameEntry handleFinishSetup={handleFinishSetup}/> : null}
        </div>
    )
}