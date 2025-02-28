int? idade;
enum FaseVida {crianca,adolescente,adulto,idoso}

definindoFaseVida (int? idade) {
  if (idade! >=2 && idade <= 10) {
    return FaseVida.crianca;
  } else if (idade >=11 && idade <= 18) {
    return FaseVida.adolescente;
  } else if (idade >=19 && idade <= 59) {
    return FaseVida.adulto;
  } else if (idade > 60) {
    return FaseVida.idoso;
  } else {
    print("A idade informada é inválida");
  }
}
