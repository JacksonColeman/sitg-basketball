import { useState,useEffect } from "react";

export default function Welcome(){
    const [currentUser, setCurrentUser] = useState({});

    useEffect(() => {
        fetch("/sessions")
          .then((r) => r.json())
          .then((data) => setCurrentUser(data.user))
          .then(() => console.log(currentUser.team))
      }, []);

    return (
        
        <div>
            {currentUser.team ? 
            <div> 
                <p>Coach {currentUser.name},</p>
                <p>Welcome to {currentUser.team.university_name}!</p>
                <p>Your task is to lead the {currentUser.team.nickname} to a national championship.</p> 
            </div>
            : <p>Loading...</p>
            }
        </div>
    )
}