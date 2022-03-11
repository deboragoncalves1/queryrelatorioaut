Use database
	select top 268 CONVERT(char(10), tbl1.data, 101) as dataformat
		, tbl1.nomearquivoOriginal
		, tbl2.agencia
		, tbl2.conta
		, *
	from tbl3
		inner join tbl1 on tbl3.id = tbl1.id
		inner join tbl2 on tbl3.codigoUsuario = tbl2.UsuarioCodigo
	order by tbl1.data desc