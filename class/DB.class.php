<?php

class DB
{
    private const localhost = "localhost";
    private const username = "root";
    private const password = "";
    private const dbname = "opening_threedos_2020";
    private $Connect;

    public function __construct()
    {
        $this->Connect = new mysqli(self::localhost, self::username, self::password, self::dbname);
    }

    public function CheckConnection()
    {
        if ($this->Connect->connect_errno) echo $this->Connect->connect_error;
        else echo "Done Connecting To Database";
    }

    /**
     * @return object
     */
    public function GetDB()
    {
        return $this->Connect;
    }

    // public function __destruct()
    // {
    //     $this->Connect->close();
    // }

}
