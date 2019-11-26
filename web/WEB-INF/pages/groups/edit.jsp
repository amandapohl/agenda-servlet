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
    <title>Agenda - Grupos</title>
</head>

<body class="bg-gray-100 font-sans leading-normal tracking-normal">

<nav id="header" class="bg-white fixed w-full z-10 top-0 shadow">

    <div class="w-full container mx-auto flex flex-wrap items-center mt-0 pt-3 pb-3 md:pb-0">
        <div class="w-1/2 pl-2 md:pl-0">
            <a class="text-gray-900 text-base xl:text-xl no-underline hover:no-underline font-bold" href="#">
                <i class="fas fa-sun text-orange-600 pr-3"></i> Agenda Eletrônica
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
                        <h5 class="font-bold uppercase text-gray-600">Editar grupo</h5>
                    </div>
                    <div class="p-5">
                        <div class="px-6">
                            <form method="post" action="/groups"
                                  class="h-16 max-w-sm flex mx-auto mt-8 border border-gray-100 rounded focus-within:border-gray-500 bg-white">
                                <input type="hidden" value="put" name="action"/>
                                <input type="hidden" value="${group.id}" name="id"/>
                                <input type="text"  name="description" placeholder="Nome do grupo" value="${group.description}"
                                       class="flex-grow flex-shrink min-w-0 pl-4 text-gray-800 outline-none rounded">
                                <button type="submit" class="bg-blue-500 hover:bg-blue-400 text-white font-bold text-md m-1 rounded px-4">
                                    <i class="far fa-edit"></i> Alterar
                                </button>
                            </form>
                            <div class="mx-auto max-w-xs"></div>
                        </div>
                    </div>
                </div>
                <!--/Template Card-->
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