#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nucutaProtectSite'
wp option delete 'nucutaEditor'
wp option delete 'nucutaAuthor'
wp option delete 'nucutaContributor'
wp option delete 'nucutaSubscriber'
wp option delete 'nucutaCustomMessage'
wp option delete 'nucuta_pp_url'
wp option delete 'nucuta_password'
wp option delete 'nucuta_password_state'

