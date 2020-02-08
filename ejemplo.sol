pragma solidity ^0.5.0;

contract MyBooleans {
    
    mapping(address => address) public miembros;
    
    function agregarMiembro(address _miembro) public returns (bool) {
        require(miembros[_miembro] == address(0), "miembro existente" );
        miembros[_miembro] = _miembro;
        return true;
    }
    
    function esNuevoMiembro(address _miembro) public view returns (bool){
        if(miembros[_miembro] != address(0) ){
            return false;
        }else{
            return true;
        }
    }
    
    function verMiembro(address _miembro) public returns (address){
        agregarMiembro(_miembro);
        if(_miembro == miembros[_miembro]){
            return _miembro;
        }
    }
    
}