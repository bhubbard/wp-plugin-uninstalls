#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ownerrez_apiRoot'
wp option delete 'ownerrez_username'
wp option delete 'ownerrez_token'
wp option delete 'ownerrez_externalSiteName'
wp option delete 'ownerrez_webhookToken'
wp option delete 'ownerrez_externalSiteId'
wp option delete 'ownerrez_do_activation_redirect'

