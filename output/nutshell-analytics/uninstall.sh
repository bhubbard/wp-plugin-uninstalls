#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nutshell_instance_id'
wp option delete 'nutshell_auth_token'
wp option delete 'nutshell_domain'
wp option delete 'nutshell_subdomain'
wp option delete 'nutshell_root_domain'
wp option delete 'nutshell_tld'
wp option delete 'mcfx_integrations'
wp option delete 'mcfx_script_active'
wp option delete 'custom_mcfx_config'
wp option delete 'mcfx_id'
wp option delete 'nutshell_protocol'

