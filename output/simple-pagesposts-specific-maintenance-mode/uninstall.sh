#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kmithi-fld-enable'
wp option delete 'kmithi-fld-enable-template-type'
wp option delete 'kmithi-fld-avoid-for-user-roles'
wp option delete 'kmithi-fld-message'
wp option delete 'kmithi-fld-displaytooptions'
wp option delete 'kmithi-fld-pages'

