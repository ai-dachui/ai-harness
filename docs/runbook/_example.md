## Deploy Application

### Procedure
1. Ensure all tests pass on the feature branch
2. Create a pull request targeting main
3. After approval, merge and tag: `app#prod#v1.0.0`
4. Monitor deployment dashboard for 5 minutes
5. Verify health check endpoint returns 200

### Pitfalls
- Don't deploy on Fridays unless critical
- Tag must be based on the correct branch (check CI config)
- If health check fails within 2 minutes, rollback immediately

### Verification
- Health endpoint: `curl https://app.example.com/health`
- Check deployment logs for "Deployment successful"
- Verify no error spike in monitoring dashboard

### Confidence
- High — executed 10+ times successfully
