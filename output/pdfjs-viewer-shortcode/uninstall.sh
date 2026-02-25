#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdfjs_notice_key'
wp option delete 'pdfjs_notice_version'
wp option delete 'pdfjs_download_button'
wp option delete 'pdfjs_print_button'
wp option delete 'pdfjs_search_button'
wp option delete 'pdfjs_editing_buttons'
wp option delete 'pdfjs_fullscreen_link'
wp option delete 'pdfjs_fullscreen_link_text'
wp option delete 'pdfjs_fullscreen_link_target'
wp option delete 'pdfjs_embed_height'
wp option delete 'pdfjs_embed_width'
wp option delete 'pdfjs_viewer_scale'
wp option delete 'pdfjs_viewer_pagemode'
wp option delete 'pdfjs_custom_page'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pdfjs_button_download_%' OR option_name LIKE '_site_transient_pdfjs_button_download_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pdfjs_button_print_%' OR option_name LIKE '_site_transient_pdfjs_button_print_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pdfjs_button_openfile_%' OR option_name LIKE '_site_transient_pdfjs_button_openfile_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pdfjs_button_zoom_%' OR option_name LIKE '_site_transient_pdfjs_button_zoom_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pdfjs_button_pagemode_%' OR option_name LIKE '_site_transient_pdfjs_button_pagemode_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pdfjs_button_searchbutton_%' OR option_name LIKE '_site_transient_pdfjs_button_searchbutton_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pdfjs_button_editingbuttons_%' OR option_name LIKE '_site_transient_pdfjs_button_editingbuttons_%'"

