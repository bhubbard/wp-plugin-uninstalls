#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posts_parent_container'
wp option delete 'pagination_container'
wp option delete 'article_contianer'
wp option delete 'load_on_scroll'
wp option delete 'lang_text_button_default'
wp option delete 'lang_text_button_loading'
wp option delete 'lang_text_button_nopost'

