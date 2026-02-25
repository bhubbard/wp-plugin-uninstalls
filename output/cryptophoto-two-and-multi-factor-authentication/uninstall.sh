#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cryptophoto_publickey'
wp option delete 'cryptophoto_privatekey'
wp option delete 'cryptophoto_salt'
wp option delete 'cryptophoto_server'
wp option delete 'cryptophoto_roles'

