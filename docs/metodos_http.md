# Métodos HTTP y Ejemplos con API Pública

## 1. GET
* **Para qué sirve:** Se utiliza exclusivamente para consultar, buscar o recuperar información de un servidor sin alterar su estado ni modificar datos.
* **Cómo se usa:** Se envía la solicitud especificando la URL del recurso que queremos obtener.
* **Ejemplo (usando JSONPlaceholder):**
  * **URL:** `https://jsonplaceholder.typicode.com/posts/1`
  * **Body (Cuerpo):** N/A (Los métodos GET no llevan cuerpo de envío).
  * **Código de Estado HTTP:** `200 OK` (Indica que la petición fue exitosa y se devuelve el recurso).

---

## 2. POST
* **Para qué sirve:** Permite enviar datos nuevos al servidor para crear un recurso completamente nuevo.
* **Cómo se usa:** Se manda la URL base y se adjunta un objeto en formato JSON dentro del cuerpo (body) de la petición con la información a registrar.
* **Ejemplo:**
  * **URL:** `https://jsonplaceholder.typicode.com/posts`
  * **Body (Cuerpo):**
    ```json
    {
      "title": "Nuevo Artículo de Programación",
      "body": "Contenido detallado sobre peticiones HTTP y fetch.",
      "userId": 1
    }
    ```
  * **Código de Estado HTTP:** `201 Created` (Indica que el recurso fue creado exitosamente en el servidor).

---

## 3. PUT
* **Para qué sirve:** Se emplea para actualizar o **reemplazar por completo** un recurso existente. Si omites algún campo en el cuerpo de la petición, el servidor podría sobrescribirlo como vacío o nulo.
* **Cómo se usa:** Se apunta al ID específico del recurso indicando todos sus datos actualizados.
* **Ejemplo:**
  * **URL:** `https://jsonplaceholder.typicode.com/posts/1`
  * **Body (Cuerpo):**
    ```json
    {
      "id": 1,
      "title": "Título completamente actualizado",
      "body": "Nuevo texto que reemplaza todo el contenido anterior.",
      "userId": 1
    }
    ```
  * **Código de Estado HTTP:** `200 OK` (O `204 No Content` dependiendo del servidor al actualizar de forma exitosa).

---

## 4. PATCH
* **Para qué sirve:** Sirve para realizar una **actualización parcial** de un recurso. A diferencia de PUT, solo modificas las propiedades específicas que envíes, dejando intactas las demás.
* **Cómo se usa:** Se indica la URL del recurso y en el cuerpo se envían únicamente los campos que van a cambiar.
* **Ejemplo:**
  * **URL:** `https://jsonplaceholder.typicode.com/posts/1`
  * **Body (Cuerpo):**
    ```json
    {
      "title": "Solo este título fue modificado parcialmente"
    }
    ```
  * **Código de Estado HTTP:** `200 OK`

---

## 5. DELETE
* **Para qué sirve:** Se utiliza para dar de baja o eliminar un recurso específico existente en el servidor.
* **Cómo se usa:** Se envía una petición indicando la ruta exacta y el identificador (ID) del elemento que se quiere borrar.
* **Ejemplo:**
  * **URL:** `https://jsonplaceholder.typicode.com/posts/1`
  * **Body (Cuerpo):** N/A
  * **Código de Estado HTTP:** `200 OK` (o `204 No Content` informando que se eliminó correctamente y no hay contenido que retornar).

---

## Diferencia principal entre PUT y PATCH
La diferencia clave radica en el alcance de la modificación:
* **PUT** reemplaza el recurso entero; exige enviar el objeto completo con todos sus campos, ya que sobreescribe la información previa.
* **PATCH** realiza cambios quirúrgicos; actualiza únicamente los atributos o campos específicos que se le envían en el cuerpo de la petición, preservando el resto de las propiedades intactas del recurso original.

*Nota importante sobre JSONPlaceholder:* Al tratarse de una API pública de pruebas educativa, simula los cambios en tiempo de ejecución, pero no los almacena permanentemente en una base de datos real. Por esta razón, si realizas un GET posterior tras un POST, PUT, PATCH o DELETE, la API seguirá devolviendo los datos originales estáticos.