#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wpkj_fc_alipay_retry_renewal'

