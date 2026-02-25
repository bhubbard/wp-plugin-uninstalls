#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'duo_ikey'
wp option delete 'duo_skey'
wp option delete 'duo_host'
wp option delete 'duo_roles'
wp option delete 'duo_xmlrpc'
wp option delete 'duo_akey'

