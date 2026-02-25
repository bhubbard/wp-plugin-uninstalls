#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user_posvirtual'
wp option delete 'password_posvirtual'
wp option delete 'token_posvirtual'
wp option delete 'jwt_posvirtual'
wp option delete 'mid_posvirtual'
wp option delete 'environment_dev_cyb_posvirtual'
wp option delete 'vc_json_posvirtual'
wp option delete 'name_enterprise_posvirtual'
wp option delete 'currency_posvirtual'
wp option delete 'activation_date_posvirtual'
wp option delete 'creation_date_posvirtual'

