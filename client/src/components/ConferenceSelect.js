import { useState } from "react"
import TeamSelect from "./TeamSelect";

export default function ConferenceSelect({conferences, updateConferenceID}){
    return (
        <div>
            <select onChange={updateConferenceID} name="conferences" id="conferences">
                <option value="default">Select Conference</option>
                {conferences.map((c) => <option value={c.id} key={c.short_name}>{c.name}</option>)}
            </select>
        </div>
    )
}