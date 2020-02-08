
pragma solidity >0.4.0 <0.6.0;
contract recompensas {
    
    enum EstatusTarea { Abierta, Cerrada, Trabajandose } 
    
    struct Tarea{
        uint recompensa;
        EstatusTarea estatusActual;
        bool existe;
        string hashTarea;
    }
    
    mapping (address => Tarea) AutoresTareas;
    
    function agregarTarea(uint _recompensa, string memory _data)public {
        require(!AutoresTareas[msg.sender].existe);
        Tarea memory nuevaTarea;
        nuevaTarea.existe = true;
        nuevaTarea.recompensa = _recompensa;
        nuevaTarea.estatusActual = EstatusTarea.Abierta;
        nuevaTarea.hashTarea = _data;
        AutoresTareas[msg.sender] = nuevaTarea;
    }
    
    function getTarea() public view returns (uint, EstatusTarea, bool){
        return (AutoresTareas[msg.sender].recompensa, AutoresTareas[msg.sender].estatusActual, AutoresTareas[msg.sender].existe);
    }
    
    function updateAutor(address _autor) public{
        agregarTarea(10, "");
        Tarea memory nuevaTarea;
        nuevaTarea.estatusActual = EstatusTarea.Cerrada;
    }
    
    
}