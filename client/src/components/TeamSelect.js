import { useState } from "react"

export default function TeamSelect({teams, updateTeamID}){
    // takes a conference object and produces a checkbox dropdown of team

    return (
        <form id="team-select">
            {teams.map((t) => (
                <div key = {t.id}>
                    <input
                        name="teams"
                        value={t.id}
                        type="radio"
                        onChange={updateTeamID}
                    />
                    <label>{t.university_name}</label>
                </div>))}
        </form>
    )
}