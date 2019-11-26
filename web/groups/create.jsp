<%--
  Created by IntelliJ IDEA.
  User: mhadaniya
  Date: 11/11/19
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">

    <title>Agenda - Criar grupo</title>
</head>
<body>
    <%--<form method="post" action="/groups">--%>
        <%--<label>Descrição</label>--%>
        <%--<input type="text" name="description" id="description">--%>
        <%--<button type="submit">Salvar</button>--%>
    <%--</form>--%>

    <div class="container mx-auto">


        <form class="w-full max-w-lg" method="post" action="/groups">
            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full px-3">
                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-password">
                        Nome do grupo
                    </label>
                    <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-password" type="text" name="description">
                    <%--<p class="text-gray-600 text-xs italic">Nome do grupo </p>--%>
                </div>
            </div>
            <div class="md:flex md:items-center">
                <div class="md:w-1/3"></div>
                <div class="md:w-2/3">
                    <button type="submit" class="shadow bg-teal-500 hover:bg-teal-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded" type="button">
                        Cadastrar
                    </button>
                </div>
            </div>
        </form>

    </div>



</body>
</html>
