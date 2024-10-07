import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "subcategories", "template" ]

  addCategory(event) {
    event.preventDefault();
    const content = this.templateTarget.innerHTML.replace(/NEW_CATEGORY/g, new Date().getTime());
    this.subcategoriesTarget.insertAdjacentHTML('beforeend', content);
  }

  removeCategory(event) {
    event.preventDefault();
    const item = event.target.closest(".subcategory");
    if (item.dataset.newRecord === "true") {
      item.remove();
    } else {
      item.querySelector("input[name*='_destroy']").value = 1;
      item.style.display = "none";
    }
  }
}
