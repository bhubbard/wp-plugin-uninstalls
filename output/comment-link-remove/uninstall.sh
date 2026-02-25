#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qcclr_autoreply_settings'
wp option delete 'qcld_clr_key'
wp option delete 'qcld_clr_spam_protection'
wp option delete 'qcld_clr_spam'
wp option delete 'qcld_clr_delivery'
wp option delete 'qcld_clr_speed'
wp option delete 'qcld_clr_spam_message'
wp option delete 'comment_link_remove_option_name'
wp option delete 'qcclr_settings'

