#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'public_token_field'
wp option delete 'signal_zen_plugin_do_activation_redirect'
wp option delete 'name_form_to'
wp option delete 'name_form_subject'

