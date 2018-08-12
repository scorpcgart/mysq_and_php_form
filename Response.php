<?php 


require_once "ResponseInterface.php";

class Response implements ResponseInterface
{
	private $response;

	public function __construct($array)
	{
		$this->response = $array;
	}

	public function getUsers()
    {
     
        $html = '<table border="1">
                    <thead>
                    <tr>
                    		<th>ID</th>
                        <th>Имя</th>
                        <th>Фамилия</th>
                        <th>Город</th>
                    </tr>
                     </thead>
                     <tbody>';
        foreach ($this->response as $key => $value ) {
           
            $html.=sprintf("
            <tr>
            	 <td>%d</td>
                <td>%s</td>
                <td>%s</td>
                <td>%s</td>",
                $this->response[$key]['id'],
                $this->response[$key]['name'],
                $this->response[$key]['lastname'],
                $this->response[$key]['city']);
        }
        $html.='</tbody>
                </table>';

        return $html;
    }

    public function getArticles()
    {

    	$html = '<table border="1">
                    <thead>
                    <tr>
                    		<th>Author</th>
                        <th>Article</th>
                    </tr>
                     </thead>
                     <tbody>';
                foreach($this->response as $key => $value){
                	$html.= sprintf("
                							<tr>
                								<td>%s %s</td>
                								<td>%s</td>",
                								$this->response[$key]['name'],
                								$this->response[$key]['lastname'],
                								$this->response[$key]['article']);
                }
                $html.= '</tbody>
                			</table>';

        return $html;
    }

    public function getCategoryArticles()
    {

        $html = '<table border="1">
                    <thead>
                    <tr>
                        <th>Category</th>
                        <th>Article</th>
                    </tr>
                     </thead>
                     <tbody>';
                foreach($this->response as $key => $value){
                    $html.= sprintf("
                                            <tr>
                                                <td>%s</td>
                                                <td>%s</td>",
                                                $this->response[$key]['name'],
                                                $this->response[$key]['article']);
                }
                $html.= '</tbody>
                            </table>';

        return $html;
    }
}