
# Projeto FarmTech Solutions - Agricultura Digital

## Descrição do Projeto

O projeto tem como objetivo criar um sistema de modelagem de banco de dados para a FarmTech Solutions, uma startup de agricultura digital. O sistema será responsável por coletar dados de sensores (umidade, pH, e nutrientes) instalados em plantações, processar esses dados em tempo real e sugerir ajustes automáticos nas condições da plantação, como a irrigação e a aplicação de nutrientes. A modelagem foi criada com o intuito de otimizar o uso de recursos e aumentar a produção agrícola.

### Objetivos
- **Coleta de Dados:** Sensores de umidade, pH e nutrientes são usados para coletar dados sobre o solo.
- **Processamento e Sugestões:** O sistema analisa esses dados e sugere ajustes automáticos na irrigação e na aplicação de fertilizantes.
- **Histórico e Previsões:** O sistema mantém um histórico dos dados para prever necessidades futuras de ajustes.

## Entidades e Relacionamentos

As entidades foram definidas com base nas necessidades de armazenamento de dados e comunicação entre sensores e o sistema central. Aqui estão as principais entidades:

1. **Sensores**
   - Atributos: ID do sensor, tipo de sensor, e dados coletados (valores de umidade, pH, nutrientes).
   
2. **Plantações**
   - Atributos: ID da plantação, tipo de cultura, localização, etc.

3. **Ajustes**
   - Atributos: ID do ajuste, data e hora do ajuste, tipo de ajuste (irrigação ou nutrientes), valor aplicado.

### Relacionamentos
- **Plantações a Sensores:** Relacionamento 1:N (Uma plantação pode ter vários sensores).
- **Sensores a Ajustes:** Relacionamento N:1 (Vários sensores podem ser ajustados de acordo com os dados coletados).
  
## Exemplos de Consultas SQL

1. **Consulta para obter a quantidade total de água aplicada em um mês:**
```sql
SELECT SUM(quantidade_agua) FROM Ajustes
WHERE tipo_ajuste = 'irrigação'
AND EXTRACT(MONTH FROM data_ajuste) = 5;
```

2. **Consulta para verificar como o pH do solo variou ao longo do ano:**
```sql
SELECT data_ajuste, pH FROM Sensores
WHERE tipo_sensor = 'pH'
AND EXTRACT(YEAR FROM data_ajuste) = 2025
ORDER BY data_ajuste;
```

### Conclusão

O modelo de banco de dados proposto atende às necessidades de monitoramento e ajuste automático das condições de plantação. Ele foi projetado para ser escalável e facilmente adaptável, garantindo que novos sensores e ajustes possam ser facilmente adicionados no futuro. Além disso, a modelagem facilita a criação de relatórios de histórico e previsões para otimização de recursos.
