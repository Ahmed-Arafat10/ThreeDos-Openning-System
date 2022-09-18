<?php
require_once "DB.class.php";

class User
{
    private $Con;
    public function __construct()
    {
        $db = new DB();
        $this->Con = $db->GetDB();
    }

    public function GetUsers($condition = "")
    {
        $Select = "SELECT * FROM `attendee` " . $condition;
        $Query = $this->Con->prepare($Select);
        $Query->execute();
        $Result = $Query->get_result();
        return $Result;
    }

    public function UpdateData($condition = "", $ID)
    {
        $Update = "UPDATE `attendee` SET " . $condition;
        $Query = $this->Con->prepare($Update);
        $Query->bind_param("i", $ID);
        $Check = $Query->execute();
        if ($Check) echo "Done Updaing";
        else echo "Something Went Wrong";
    }
    
}
