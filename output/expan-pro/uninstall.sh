#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'expanpro_token'
wp option delete 'expanpro_domain'
wp option delete 'expanpro_domain_name'
wp option delete 'expanpro_canonical'
wp option delete 'expanpro_showprice'
wp option delete 'expanpro_showjsonld'
wp option delete 'expanpro_email'
wp option delete 'expanpro_password'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_expanpro-%' OR option_name LIKE '_site_transient_expanpro-%'"

