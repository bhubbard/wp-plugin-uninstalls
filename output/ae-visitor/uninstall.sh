#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ae_visitor_day'
wp option delete 'ae_visitor_yesterday'
wp option delete 'ae_visitor_week'
wp option delete 'ae_visitor_month'
wp option delete 'ae_visitor_all'
wp option delete 'ae_visitor_data'
wp option delete 'ae_visitor_day_update'
wp option delete 'ae_visitor_week_update'
wp option delete 'ae_visitor_month_update'

