# -*- coding: utf-8 -*-

from odoo.tests.common import TransactionCase
from odoo.tests import tagged


@tagged('post_install', '-at_install')
class TestAddon(TransactionCase):

    def setUp(self):
        super(TestAddon, self).setUp()

    def test_addition(self):
        # Pass
        self.assertEqual(2+2, 4)
