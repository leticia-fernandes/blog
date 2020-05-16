module PostsHelper
    def edit_icon(post)
      link_to fa_icon("pencil"),
              edit_post_path(post),
              title: "Edit post",
              data: { toggle: "tooltip",
                      placement: "bottom"}
    end

    def delete_icon(post)
      link_to fa_icon("trash"),
              post_path(post),
              method: :delete,
              title: "Delete post",
              data: { confirm: 'Are you sure?',
                      toggle: "tooltip",
                      placement: "bottom"}
    end


    def edit_delete_icons(post)
      edit_icon(post) + delete_icon(post)
    end
end
