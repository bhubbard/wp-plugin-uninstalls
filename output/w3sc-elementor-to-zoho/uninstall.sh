#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w3scelementor_zoho_auth_infos'
wp option delete 'w3scelementor_alltoken_data'
wp option delete 'w3scelementor_refresh_token_data'
wp option delete 'w3sc_elementor_installed'
wp option delete 'w3sc_elementor_version'

