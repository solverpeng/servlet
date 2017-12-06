# servlet
```java
StringBuffer requestURL = req.getRequestURL();
        System.out.println("requestURL=" + requestURL);
        /*
        * 请求：http://localhost:8080/servlet/helloServlet?name=test&name=test2&age=12
        * requestURL=http://localhost:8080/servlet/helloServlet
        *
        * 请求：http://127.0.0.1:8080/servlet/helloServlet?name=test&name=test2&age=12
        * requestURL=http://127.0.0.1:8080/servlet/helloServlet
        *
        * 请求：http://192.168.13.128:8080/servlet/helloServlet?name=test&name=test2&age=12
        * requestURL=http://192.168.13.128:8080/servlet/helloServlet
        * */
        String requestURI = req.getRequestURI();
        System.out.println("requestURI=" + requestURI); // /servlet/helloServlet
        String servletPath = req.getServletPath();
        System.out.println("servletPath=" + servletPath); // /helloServlet
        String contextPath = req.getContextPath();
        System.out.println("contextPath=" + contextPath); // /servlet

        int localPort = req.getLocalPort();
        System.out.println("localPort=" + localPort); // 8080
        String localName = req.getLocalName();
        System.out.println("localName=" + localName);
        /*
        * 请求：http://localhost:8080/servlet/helloServlet?name=test&name=test2&age=12
        * localName=0:0:0:0:0:0:0:1
        *
        * 请求：http://127.0.0.1:8080/servlet/helloServlet?name=test&name=test2&age=12
        * localName=127.0.0.1
        *
        * 请求：http://192.168.13.128:8080/servlet/helloServlet?name=test&name=test2&age=12
        * localName=PC-20161212XZNQ
        * */
        String remoteAddr = req.getRemoteAddr();
        System.out.println("remoteAddr=" + remoteAddr);
        /*
        * 请求：http://localhost:8080/servlet/helloServlet?name=test&name=test2&age=12
        * remoteAddr=0:0:0:0:0:0:0:1
        *
        * 请求：http://127.0.0.1:8080/servlet/helloServlet?name=test&name=test2&age=12
        * remoteAddr=127.0.0.1
        *
        * 请求：http://192.168.13.128:8080/servlet/helloServlet?name=test&name=test2&age=12
        * remoteAddr=192.168.13.128
        * */
        String remoteUser = req.getRemoteUser();
        System.out.println("remoteUser=" + remoteUser);//null
        String remoteHost = req.getRemoteHost();
        System.out.println("remoteHost=" + remoteHost);
        /*
        * 请求：http://localhost:8080/servlet/helloServlet?name=test&name=test2&age=12
        * remoteHost=0:0:0:0:0:0:0:1
        *
        * 请求：http://127.0.0.1:8080/servlet/helloServlet?name=test&name=test2&age=12
        * remoteHost=127.0.0.1
        *
        * 请求：http://192.168.13.128:8080/servlet/helloServlet?name=test&name=test2&age=12
        * remoteHost=192.168.13.128
        * */
        int remotePort = req.getRemotePort();
        System.out.println("remotePort=" + remotePort);//11438/11680/11721

        String serverName = req.getServerName();
        System.out.println("serverName=" + serverName);
        /*
        * 请求：http://localhost:8080/servlet/helloServlet?name=test&name=test2&age=12
        * serverName=localhost
        *
        * 请求：http://127.0.0.1:8080/servlet/helloServlet?name=test&name=test2&age=12
        * serverName=127.0.0.1
        *
        * 请求：http://192.168.13.128:8080/servlet/helloServlet?name=test&name=test2&age=12
        * serverName=192.168.13.128
        * */
        int serverPort = req.getServerPort();
        System.out.println("serverPort=" + serverPort);//8080

        String characterEncoding = req.getCharacterEncoding();
        System.out.println("characterEncoding=" + characterEncoding);//null

        String method = req.getMethod();
        System.out.println("method=" + method);//GET
        String authType = req.getAuthType();
        System.out.println("authType=" + authType);//null
        String protocol = req.getProtocol();
        System.out.println("protocol=" + protocol);//HTTP/1.1
        String scheme = req.getScheme();
        System.out.println("scheme=" + scheme);//http
        Principal userPrincipal = req.getUserPrincipal();
        if (userPrincipal != null) {
            System.out.println("userPrincipal=" + userPrincipal.toString());
        }

        Enumeration<String> headerNames = req.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            System.out.println("headName=" + headerNames.nextElement());
        }

        String queryString = req.getQueryString();
        System.out.println("queryString=" + queryString);//name=test&name=test2&age=12

        Map<String, String[]> parameterMap = req.getParameterMap();
        for (Map.Entry<String, String[]> entry : parameterMap.entrySet()) {
            System.out.print("parameterName=" + entry.getKey() + " ");
            for (String s : entry.getValue()) {
                System.out.print("parameterValue=" + s + "\t\b");
            }
            System.out.println();
        }
        // parameterName=name parameterValue=testparameterValue=test2 \t parameterName=age parameterValue=12

        Enumeration<String> parameterNames = req.getParameterNames();
        while (parameterNames.hasMoreElements()) {
            System.out.println("parameterName=" + parameterNames.nextElement());
        }
        // parameterName=name \t parameterName=age
```
