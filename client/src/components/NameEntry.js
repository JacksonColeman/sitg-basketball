import { useState } from "react";

export default function NameEntry({handleFinishSetup}){
    const [name, setName] = useState("");

    const handleOnChange = (e) => {
        setName(e.target.value);
    }

    const handleSubmitName = (e) => {
        e.preventDefault();
        handleFinishSetup(name);
    }

    return (
        <form onSubmit={handleSubmitName}>
            <label>Enter Your Name: <input type="text" value={name} onChange={handleOnChange}></input></label>
            <input type="submit"></input>
        </form>
    )
}