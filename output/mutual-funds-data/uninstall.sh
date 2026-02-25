#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '1y'
wp option delete '3y'
wp option delete '5y'
wp option delete 'expense_ratio'
wp option delete 'portfolio_turnover'
wp option delete 'category'
wp option delete 'sub_category'
wp option delete 'risk'
wp option delete 'is_first_time'

