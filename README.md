### firebase hosting
```
npm install -g firebase-tools
firebase login
firebase init
firebase deploy

firebase hosting:channel:deploy preview_name

```

### AWS Amplify
#### Add Amplify backend features to your project
```
npm create amplify
nano amplify/data/resource.ts
nano amplify/auth/resource.ts

npx amplify sandbox
git push
```