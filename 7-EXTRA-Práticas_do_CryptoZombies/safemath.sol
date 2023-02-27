pragma solidity >=0.5.0 <0.6.0;

/**
 * @title SafeMath
 * @dev Operações matemáticas com verificações de segurança que lançam em erro
 */
library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  /**
  * @dev Divisão inteira de dois números, truncando o quociente.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // A solidez joga automaticamente ao dividir por 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // Não há nenhum caso em que isso não seja válido
    return c;
  }

  /**
  * @dev Subtrai dois números, lança em transbordo (ou seja, se subtrair é maior que minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  /**
  * @dev Acrescenta dois números, atira no transbordo.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}

/**
 * @title SafeMath32
 * @dev Biblioteca SafeMath implementada para uint32
 */
library SafeMath32 {

  function mul(uint32 a, uint32 b) internal pure returns (uint32) {
    if (a == 0) {
      return 0;
    }
    uint32 c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint32 a, uint32 b) internal pure returns (uint32) {
    // assert(b > 0); // O Solidity joga automaticamente ao dividir por 0
    uint32 c = a / b;
    // assert(a == b * c + a % b); // Não há nenhum caso em que isso não seja válido
    return c;
  }

  function sub(uint32 a, uint32 b) internal pure returns (uint32) {
    assert(b <= a);
    return a - b;
  }

  function add(uint32 a, uint32 b) internal pure returns (uint32) {
    uint32 c = a + b;
    assert(c >= a);
    return c;
  }
}

/**
 * @title SafeMath16
 * @dev Biblioteca SafeMath implementada para uint16
 */
library SafeMath16 {

  function mul(uint16 a, uint16 b) internal pure returns (uint16) {
    if (a == 0) {
      return 0;
    }
    uint16 c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint16 a, uint16 b) internal pure returns (uint16) {
    // assert(b > 0); // A solidez joga automaticamente ao dividir por 0
    uint16 c = a / b;
    // assert(a == b * c + a % b); // Não há nenhum caso em que isso não seja válido
    return c;
  }

  function sub(uint16 a, uint16 b) internal pure returns (uint16) {
    assert(b <= a);
    return a - b;
  }

  function add(uint16 a, uint16 b) internal pure returns (uint16) {
    uint16 c = a + b;
    assert(c >= a);
    return c;
  }
}
