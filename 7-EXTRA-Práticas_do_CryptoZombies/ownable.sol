/**
 * @title Ownable
 * @dev O contrato de propriedade tem um endereço de proprietário, e fornece controle básico de autorização
 * funciona, o que simplifica a implementação das "permissões de usuário".
 */
contract Ownable {
  address public owner;

  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

  /**
   * @dev O construtor proprietário define o "proprietário" original do contrato para o remetente
   * conta.
   */
  function Ownable() public {
    owner = msg.sender;
  }


  /**
   * @dev Lança se for chamado por qualquer conta que não seja o proprietário.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }


  /**
   * @dev Permite ao atual proprietário transferir o controle do contrato para um novo proprietário.
   * @param newOwner O endereço para o qual transferir a propriedade.
   */
  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));
    OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}
