#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lws_tools_chatbot_data'
wp option delete 'lws_tk_ia_chatbot_state'
wp option delete 'lws_aff_new_login'
wp option delete 'whl_page'
wp option delete 'easy_hide_login_options'
wp option delete 'lws_preprod'
wp option delete 'lws_tk_keep_data_on_delete'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lws_tk_%'"
wp option delete 'lws_tk_reduce_revisions_number'
wp option delete 'lwstk_do_not_ask_again'
wp option delete 'lws_tk_llm_optimisation'
wp option delete 'lws_tk_sanitize_media'
wp option delete 'lws_tk_delete_live_writer'
wp option delete 'lws_tk_err_co'
wp option delete 'lws_tk_hide_gen'
wp option delete 'lws_tk_less_revision'
wp option delete 'lws_tk_no_h1_mce'
wp option delete 'lws_tk_no_emote_wp'
wp option delete 'lws_tk_page_author_link'
wp option delete 'lws_tk_medium_large'
wp option delete 'lws_tk_no_apirest'
wp option delete 'lws_tk_no_user_ep_rest'
wp option delete 'lws_tk_no_rss'
wp option delete 'lws_tk_no_comment_rss'
wp option delete 'lws_tk_no_user_sitemap'
wp option delete 'lws_tk_remove_password_strength_meter'
wp option delete 'kws_tk_no_self_ping'
wp option delete 'lws_tk_remove_shortlink'
wp option delete 'lws_tk_remove_feeds_links'

# Delete Transients
wp transient delete 'lwstk_remind_me'
wp transient delete 'lws_tk_ssl_cert'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wp_version_check'

