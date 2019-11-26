<%--
  Created by IntelliJ IDEA.
  User: mhadaniya
  Date: 11/11/19
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="br.edu.unifil.agenda.model.Group, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <title>Agenda - Grupos</title>
</head>

<body class="bg-gray-100 font-sans leading-normal tracking-normal">

    <nav id="header" class="bg-white fixed w-full z-10 top-0 shadow">

        <div class="w-full container mx-auto flex flex-wrap items-center mt-0 pt-3 pb-3 md:pb-0">
            <div class="w-1/2 pl-2 md:pl-0">
                <a class="text-gray-900 text-base xl:text-xl no-underline hover:no-underline font-bold" href="#">
                    <i class="fas fa-address-book pr-3"></i> Agenda Eletrônica
                </a>
            </div>
        </div>

    </nav>

<!--Container-->
<div class="container w-full mx-auto pt-20">

    <div class="w-full px-4 md:px-0 md:mt-8 mb-16 text-gray-800 leading-normal">

        <div class="flex flex-row flex-wrap flex-grow mt-2">

            <div class="w-full md:w-1/2 xl:w-1/3 p-3">
                <!--Template Card-->
                <div class="bg-white border rounded shadow">
                    <div class="border-b p-3">
                        <h5 class="font-bold uppercase text-gray-600">Novo grupo</h5>
                    </div>
                    <div class="p-5">
                        <div class="px-6">
                            <form method="post" action="/groups" class="h-16 max-w-sm flex mx-auto mt-8 border border-gray-100 rounded focus-within:border-gray-500 bg-white">
                                <input type="text" class="flex-grow flex-shrink min-w-0 pl-4 text-gray-800 outline-none rounded" name="description" placeholder="Nome do grupo">
                                <button type="submit" class="bg-green-500 hover:bg-green-400 text-white font-bold text-md m-1 rounded px-4">
                                    <i class="fas fa-plus-circle"></i> Adicionar
                                </button>
                            </form>
                            <div class="mx-auto max-w-xs"></div>
                        </div>
                    </div>
                </div>
                <!--/Template Card-->
            </div>

            <div class="w-full p-3">
                <!--Table Card-->
                <div class="bg-white border rounded shadow">
                    <div class="border-b p-3">
                        <h5 class="font-bold uppercase text-gray-600">tabela usando jstl</h5>
                    </div>
                    <div class="p-5">
                        <table class="w-full p-5 text-gray-700">
                            <thead>
                                <tr>
                                    <th class="text-left text-blue-900">#</th>
                                    <th class="text-left text-blue-900">Nome</th>
                                    <th class="text-left text-blue-900">Ações</th>
                                </tr>
                            </thead>

                            <tbody>
                            <c:forEach var="group" items="${groups}">
                                <tr>
                                    <td>${group.getId()}</td>
                                    <td>${group.getDescription()}</td>
                                    <td>
                                        <a href="/groups?action=edit&id=${group.id}" class="bg-blue-500 hover:bg-blue-400 text-white font-bold text-md m-1 rounded px-4">
                                            <i class="far fa-edit"></i> Editar
                                        </a>
                                        <form method="POST" action="/groups">
                                            <input type="hidden" name="action" value="delete">
                                            <input type="hidden" name="id" value="${group.id}">
                                            <button type="submit" class="bg-red-500 hover:bg-red-400 text-white font-bold text-md m-1 rounded px-4">
                                                <i class="fas fa-trash"></i> Remover
                                            </button>
                                        </form>
                                    </td>

                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--/table Card-->
            </div>


        </div>

        <!--/ Console Content-->

    </div>


</div>
<!--/container-->

<footer class="bg-white border-t border-gray-400 shadow">
    <div class="container max-w-md mx-auto flex py-8">

    </div>
</footer>

</body>

</html>