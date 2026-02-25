#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zupportdesk_email'
wp option delete 'zupportdesk_password'
wp option delete 'zupportdesk_userId'
wp option delete 'zupportdesk_companyList'
wp option delete 'zupportdesk_selectedCompanyId'
wp option delete 'zupportdesk_authorizeToken'
wp option delete 'zupportdesk_widgetId'

