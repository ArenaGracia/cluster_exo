package controller.user;

import etu2070.framework.ModelView;
import etu2070.annotation.url;
import model.client.Client;
import connection.BddObject;

public class ClientController extends Client {
    
    @url("user/client.do")
    public ModelView infos() throws Exception {
        ModelView view = new ModelView("home/index");
        Client[] cls= this.getList();
        view.addItem("clients", cls);
        return view;
    }
    
    public ClientController()throws Exception{}

}
