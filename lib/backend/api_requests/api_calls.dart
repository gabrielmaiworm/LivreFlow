import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GETUsuariosCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GETUsuarios',
      apiUrl: 'http://177.70.102.109:3005/usuario',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class POSTUsuarioCall {
  static Future<ApiCallResponse> call({
    String nome = '',
    String email = '',
    String dataDeNascicmento = '',
    String documento = '',
    String telefoneFixo = '',
    String cep = '',
    String logradouro = '',
    String numero = '',
    String complemento = '',
    String bairro = '',
    String cidade = '',
    String estado = '',
    String situacaoLesao = '',
    String nivelLesao = '',
    String detalheLesao = '',
    String fotoDocumento64 = '',
    String fotoComDocumento64 = '',
    String senha = '',
    String telefoneCelular = '',
  }) {
    final body = '''
{
        "nome": "${nome}",
        "email": "${email}",
        "data_de_nascicmento": "${dataDeNascicmento}",
        "telefone_fixo": "${telefoneFixo}",
        "telefone_celular": "${telefoneCelular}",
        "documento": "${documento}",
        "cep": "${cep}",
        "logradouro": "${logradouro}",
        "numero": "${numero}",
        "complemento": "${complemento}",
        "bairro": "${bairro}",
        "cidade": "${cidade}",
        "estado": "${estado}",
        "situacao_lesao": "${situacaoLesao}",
        "nivel_lesao": "${nivelLesao}",
        "detalhe_lesao": "${detalheLesao}",
        "foto_documento64": "${fotoDocumento64}",
        "foto_com_documento64": "${fotoComDocumento64}",
        "senha": "${senha}"
    }''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTUsuario',
      apiUrl: 'http://177.70.102.109:3005/usuario',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'nome': nome,
        'email': email,
        'data_de_nascicmento': dataDeNascicmento,
        'documento': documento,
        'telefone_fixo': telefoneFixo,
        'cep': cep,
        'logradouro': logradouro,
        'numero': numero,
        'complemento': complemento,
        'bairro': bairro,
        'cidade': cidade,
        'estado': estado,
        'situacao_lesao': situacaoLesao,
        'nivel_lesao': nivelLesao,
        'detalhe_lesao': detalheLesao,
        'foto_documento64': fotoDocumento64,
        'foto_com_documento64': fotoComDocumento64,
        'senha': senha,
        'telefone_celular': telefoneCelular,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GETequipamentosCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GETequipamentos',
      apiUrl: 'http://177.70.102.109:3005/equipamento',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class POSTequipamentosCall {
  static Future<ApiCallResponse> call({
    String nome = '',
    String numeroSerieEquipamento = '',
    String equipamentoStatus = '',
    String foto = '',
  }) {
    final body = '''
{
  "nome": "${nome}",
  "equipamento_status": "${equipamentoStatus}",
  "numero_serie_equipamento": "${numeroSerieEquipamento}",
  "foto": "${foto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTequipamentos',
      apiUrl: 'http://177.70.102.109:3005/equipamento',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'nome': nome,
        'numero_serie_equipamento': numeroSerieEquipamento,
        'equipamento_status': equipamentoStatus,
        'foto': foto,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String email = '',
    String senha = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'http://177.70.102.109:3005/autenticacao',
      callType: ApiCallType.GET,
      headers: {
        'email': 'email',
        'senha': 'senha',
      },
      params: {
        'email': email,
        'senha': senha,
      },
      returnBody: true,
    );
  }
}

class POSTbateriaCall {
  static Future<ApiCallResponse> call({
    String serieBat = '',
    String statusBat = '',
    double carga,
  }) {
    final body = '''
{
  "serieBat": "${serieBat}",
  "statusBat": "${statusBat}",
  "carga": ${carga}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTbateria',
      apiUrl: 'http://177.70.102.109:3000/bateria',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'serieBat': serieBat,
        'statusBat': statusBat,
        'carga': carga,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class TesteCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'teste',
      apiUrl:
          'https://collectionapi.metmuseum.org/public/collection/v1/departments',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class POSTfuncionarioCall {
  static Future<ApiCallResponse> call({
    String nome = '',
    String email = '',
    String dataDeNascicmento = '',
    String documento = '',
    String cep = '',
    String logradouro = '',
    String numero = '',
    String complemento = '',
    String bairro = '',
    String cidade = '',
    String estado = '',
    String fotoDocumento64 = '',
    String fotoComDocumento64 = '',
    String senha = '',
    String telefone = '',
  }) {
    final body = '''
{
  "nome": "${nome}",
  "email": "${email}",
  "data_de_nascicmento": "${dataDeNascicmento}",
  "documento": "${documento}",
  "cep": "${cep}",
  "logradouro": "${logradouro}",
  "numero": "${numero}",
  "complemento": "${complemento}",
  "bairro": "${bairro}",
  "cidade": "${cidade}",
  "estado": "${estado}",
  "foto_documento64": "${fotoDocumento64}",
  "foto_com_documento64": "${fotoComDocumento64}",
  "senha": "${senha}",
  "telefone": "${telefone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTfuncionario',
      apiUrl: 'http://177.70.102.109:3005/funcionario',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'nome': nome,
        'email': email,
        'data_de_nascicmento': dataDeNascicmento,
        'documento': documento,
        'cep': cep,
        'logradouro': logradouro,
        'numero': numero,
        'complemento': complemento,
        'bairro': bairro,
        'cidade': cidade,
        'estado': estado,
        'foto_documento64': fotoDocumento64,
        'foto_com_documento64': fotoComDocumento64,
        'senha': senha,
        'telefone': telefone,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class POSTParceiroCall {
  static Future<ApiCallResponse> call({
    String nome = '',
    String email = '',
    String documento = '',
    String senha = '',
    String cep = '',
    String logradouro = '',
    String numero = '',
    String complemento = '',
    String bairro = '',
    String cidade = '',
    String estado = '',
    String nomeFantasia = '',
    String razaoSocial = '',
    String inscricaoEstadual = '',
    String tipoDeServico = '',
    String cnpj = '',
    String telefone = '',
    String telefoneUsuario = '',
    String fotoDocumento64 = '',
    String agencia = '',
    String nConta = '',
    String banco = '',
    String tipo = '',
  }) {
    final body = '''
{
  "nome": "${nome}",
  "email": "${email}",
  "documento": "${documento}",
  "senha": "${senha}",
  "cep": "${cep}",
  "logradouro": "${logradouro}",
  "numero": "${numero}",
  "complemento": "${complemento}",
  "bairro": "${bairro}",
  "cidade": "${cidade}",
  "estado": "${estado}",
  "nome_fantasia": "${nomeFantasia}",
  "razao_social": "${razaoSocial}",
  "inscricao_estadual": "${inscricaoEstadual}",
  "tipo_de_servico": "${tipoDeServico}",
  "cnpj": "${cnpj}",   
  "telefone": "${telefone}",
  "telefone_usuario": "${telefoneUsuario}", 
  "foto_documento64": "${fotoDocumento64}",
  "agencia": "${agencia}",
  "n_conta": "${nConta}",
  "banco": "${banco}",
  "tipo": "${tipo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTParceiro',
      apiUrl: 'http://177.70.102.109:3005/parceiro',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'nome': nome,
        'email': email,
        'documento': documento,
        'senha': senha,
        'cep': cep,
        'logradouro': logradouro,
        'numero': numero,
        'complemento': complemento,
        'bairro': bairro,
        'cidade': cidade,
        'estado': estado,
        'nome_fantasia': nomeFantasia,
        'razao_social': razaoSocial,
        'inscricao_estadual': inscricaoEstadual,
        'tipo_de_servico': tipoDeServico,
        'cnpj': cnpj,
        'telefone': telefone,
        'telefone_usuario': telefoneUsuario,
        'foto_documento64': fotoDocumento64,
        'agencia': agencia,
        'n_conta': nConta,
        'banco': banco,
        'tipo': tipo,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
