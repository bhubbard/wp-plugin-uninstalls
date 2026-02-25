#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mphbpb_step_1'
wp option delete 'mphbpb_step_2'
wp option delete 'mphbpb_step_3'
wp option delete 'mphbpb_greyed_out'
wp option delete 'mphbpb_active'
wp option delete 'mphbpb_show_submitted'
wp option delete 'mphb_search_results_page'
wp option delete 'mphb_checkout_page'
wp option delete 'mphb_booking_confirmation_page'

