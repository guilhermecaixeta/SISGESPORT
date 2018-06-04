import { Component, OnInit } from '@angular/core';
import { BaseEtapaComponent } from '../../base';
import { MaskField } from '../../utils/mask.util.component';

@Component({
  selector: 'app-aluno-etapa2',
  templateUrl: './aluno-etapa2.component.html',
  styleUrls: ['./aluno-etapa2.component.scss']
})
export class AlunoEtapa2Component extends BaseEtapaComponent {
  estadosLista: any[];
  municipioLista: any[];
  cepMask: any;
  init(){
    this.cepMask = {mask: MaskField.cepMask};
    this.service.Get('estado/BuscarTodos').subscribe(object => {
      this.estadosLista = object.data;
    });
    this.formulario.get('estado').valueChanges.subscribe(id =>{
      this.service.Get('municipio/BuscarPorIdEstado', id).subscribe(object => this.municipioLista = object.data);
    });
  }
}
