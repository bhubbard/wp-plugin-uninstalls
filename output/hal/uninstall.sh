#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'option_erase_cache'
wp option delete 'option_cache_timeout'
wp option delete 'option_idhal'
wp option delete 'option_type'
wp option delete 'option_choix'
wp option delete 'option_infocontact'
wp option delete 'option_groupe'
wp option delete 'option_email'
wp option delete 'option_tel'
wp option delete 'option_social0'
wp option delete 'option_social1'
wp option delete 'option_social2'
wp option delete 'option_social3'
wp option delete 'option_lang'

