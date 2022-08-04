import Controller from "sap/ui/core/mvc/Controller"
import AppComponent from "../Component"

/**
 * @namespace de.golem.controller
 */
export default class App extends Controller {
  public onInit(): void {
    // apply content density mode to root view
    this.getView().addStyleClass((this.getOwnerComponent() as AppComponent).getContentDensityClass())
  }
}
