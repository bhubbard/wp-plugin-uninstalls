#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_ratings'
wp option delete 'gr_setup'
wp option delete 'gr_DeliveryMethod'
wp option delete 'gr_PaymentMethod'
wp option delete 'gr_BusinessFunction'
wp option delete 'gr_UnitOfMeasurement'
wp option delete 'gr_billingIncrement'
wp option delete 'gr_availableAtOrFrom'
wp option delete 'gr_condition'
wp option delete 'gr_eligibleCustomerTypes'
wp option delete 'gr_language'
wp option delete 'gr_validity'
wp option delete 'currency_type'
wp option delete 'gr_PartsAndLabor-PickUp'
wp option delete 'gr_PartsAndLabor-BringIn'
wp option delete 'gr_Labor-BringIn'

