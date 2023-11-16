#!/usr/bin/env node
import 'source-map-support/register';
import * as cdk from 'aws-cdk-lib';
import { SfCdkStack } from '../lib/sf_cdk-stack';

const app = new cdk.App();
const stackName = app.node.tryGetContext("stackName");
new SfCdkStack(app, stackName, {
  env: { region: 'us-east-1' }
});