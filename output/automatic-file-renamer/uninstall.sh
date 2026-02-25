#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AFR_prefixe'
wp option delete 'AFR_suffixe'
wp option delete 'AFR_activation'
wp option delete 'AFR_redirection'
wp option delete 'AFR_Ou_Rediriger'
wp option delete 'AFR_roles_config'

