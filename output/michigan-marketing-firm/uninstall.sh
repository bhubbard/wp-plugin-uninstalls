#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mimf_slogan_show'
wp option delete 'mimf_msg_settings'
wp option delete 'mimf_settings'
wp option delete 'mimf_hide_page'
wp option delete 'mimf_hide_toolbar'
wp option delete 'mimf_particlejs'
wp option delete 'mimf_conditional_script'

