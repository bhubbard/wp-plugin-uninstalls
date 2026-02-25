#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weblizar_wnlsp_options'
wp option delete 'weblizar_nls_options'
wp option delete 'weblizar_nls_mailchimp_key'
wp option delete 'weblizar_nls_madmimi_list'
wp option delete 'nls_nht_plugin_do_activation_redirect'
wp option delete 'weblizar_nls_mailchimp_list'

