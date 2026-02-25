#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'underConstructionActivationStatus'
wp option delete 'underConstructionDisplayOption'
wp option delete 'underConstructionCustomText'
wp option delete 'underConstructionHTML'
wp option delete 'underConstructionHTTPStatus'
wp option delete 'underConstructionRedirectURL'
wp option delete 'underConstructionIPWhitelist'
wp option delete 'underConstructionRequiredRole'
wp option delete 'underConstructionArchive'

