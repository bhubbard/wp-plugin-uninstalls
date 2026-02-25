#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MyWooCommerceShowroom_title'
wp option delete 'MyWooCommerceShowroom_pics'
wp option delete 'MyWooCommerceShowroom_useMedia'
wp option delete 'MyWooCommerceShowroom_prod_nr'
wp option delete 'MyWooCommerceShowroom_prod_cats'
wp option delete 'MyWooCommerceShowroom_cat_terms'

# Delete Transients
wp transient delete 'MyWooCommerceShowroom_notification'

