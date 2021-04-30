<?php
class Dbase
{

    public $context;
    public $logic;

    public function __construct($directory)
    {
        $this->logic = new logic();
        $this->context = new context($directory);
    }


    function searchEntity($cedula){
        $stmt = $this->context->db->prepare("Select * from Ciudadanos where Documento = ?");
        $stmt->bind_param("s",$cedula);
         $stmt->execute();
        $result = $stmt->get_result();

        if($result->num_rows ===0){
            return null;
        }else{
            $result = $result->fetch_object();
            $user = new ciudadano();

            $user->id = $result->id;
            $user->nombre = $result->nombre;
            $user->documento = $result->documento;
            $user->estado = $result->estado;
            $user->apellido = $result->apellido;
            $user->email = $result->email;

            return $user;
        }
        $stmt->close();

    }
    public function searchPuesto($puesto,$partido){
        $stmt=$this->context->db->prepare("Select * from puesto Where descripcion=? and partido=?");
        $stmt->bind_param("ss",$puesto,$partido);
        $stmt->execute();
        $result=$stmt->get_result();
        if ($result->num_rows===0) {
            $message1="No hay puestos disponibles";
             echo $message1;
        
           
        }
        
        elseif($_POST['regidor']==null){
            $message2="vacio";
            echo $message2;
            
        }
       else{
            $message3="hay puestos";
            echo $message3;
        }
    }
}
