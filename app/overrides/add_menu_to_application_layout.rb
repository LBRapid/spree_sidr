Deface::Override.new(
  virtual_path: 'spree/layouts/spree_application',
  name: 'add_menu_to_application_layout',
  insert_after: 'div.container',
  text: '
    <a id="sidr-toggle" href="#sidr"></a>
    <div id="sidr">
      <ul>
        <li id="home-link"><%= link_to Spree.t(:home), spree.root_path %></li>
        <li id="login-link"><%= link_to Spree.t(:login), spree.login_path %></li>
      </ul>

      <% allowed_controllers = %w{spree/home spree/products spree/taxons spree/store"} %>
      <% if allowed_controllers.any? { |cont| cont == params[:controller] } %>
        <ul>
          <% if @taxonomies %>
            <% @taxonomies.each do |taxonomy| %>
              <h6 class="taxonomy-root"><%= Spree.t(:shop_by_taxonomy, :taxonomy => taxonomy.name) %></h6>
              <%= taxons_tree(taxonomy.root, @taxon, Spree::Config[:max_level_in_taxons_menu] || 1) %>
            <% end %>
          <% end %>
        </ul>
      <% end %>
    </div>
  '
)
