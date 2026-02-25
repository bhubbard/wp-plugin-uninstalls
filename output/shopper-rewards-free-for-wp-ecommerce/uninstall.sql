-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pbci_shopper_rewards_ignore_categories', 'pbci_shopper_rewards_redemption_options', 'pbci_shopper_rewards_name', 'pbci_shopper_rewards_more_points_needed_format', 'pbci_shopper_rewards_days_to_use_coupon', 'pbci_shopper_rewards_redemption_labels', 'pbci_shopper_rewards_points_per_currency_unit', 'pbci_shopper_rewards_terms_format', 'pbci_shopper_rewards_redemption_types', 'pbci_shopper_rewards_per_currency_unit', 'pbci_shopper_rewards_powered_by', 'pbci_shopper_rewards_per_per_dollar', 'user_account_url', 'pbci_messages');

