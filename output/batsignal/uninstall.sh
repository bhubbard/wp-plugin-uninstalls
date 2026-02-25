#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'l0nch_my_batsignal_option_expirecookie'
wp option delete 'l0nch_my_batsignal_option_declencheur'
wp option delete 'l0nch_my_batsignal_option_declencheur_unit'
wp option delete 'l0nch_my_batsignal_option_powered'
wp option delete 'l0nch_my_batsignal_option_newsletter_html'

