#rm -rf ./*

echo "-------------------------------------------------------------------"
echo "-                   create frontend project                       -"
echo "-------------------------------------------------------------------"
echo | ng new --create-application=true --routing=true --style=scss --defaults --skip-git=true --skip-tests --interactive=false frontend2 #--view-encapsulation --strict --force
cd ./frontend2

echo | ng add --defaults=true @angular/material
echo | ng add --defaults=true @ngrx/data
echo | ng add --defaults=true @ngrx/store
echo | ng add @angular/pwa
#npm install --save @angular/flex-layout@14.0.0-beta.41
#npm install git://github.com/ngrx/platform.git#master --save

#ng generate module manager
#ng generate module shared
#ng g component shared/components/login --module=shared
#ng generate service services/Authentication
#ng generate @angular/material:nav navigation

#ng generate component manager/Dashboard
#ng generate @angular/material:dashboard manager/Dashboard --module=manager
#ng generate @angular/material:table manager/UserList --module=manager
#ng generate @angular/material:address-form manager/UserNew --module=manager
#ng generate component manager/UserDetails

#ng generate store State --root --statePath store --module app.module.ts
## Initial State Setup
#ng generate @ngrx/schematics:store State --root --statePath store --module app.module.ts
## Initial Effects Setup
#ng generate @ngrx/schematics:effect effets/Login --root --module app.module.ts

#ng generate @ngrx/schematics:action login2 --creators --group --api --spec

#ng generate reducer User --reducers reducers/index.ts --module app.module.ts --api --group --creators
#ng generate container UsersPage --state reducers/index.ts --stateInterface MyState --testDepth
#ng generate effect User --root -m app.module.ts --group --spec --api --creators
#ng generate entity User --reducers reducers/index.ts --module app.module.ts --spec --creators
#ng generate feature User --reducers reducers/index.ts --module app.module.ts --group --spec --api --creators
#ng generate feature manager/Organizaton --reducers reducers/index.ts --module manager/manager.module.ts --group --spec --api --creators
#ng generate feature shared/Postcode --reducers reducers/index.ts --module shared/shared.module.ts --group --spec --api --creators

#ng generate feature member/Registration --reducers reducers/index.ts --module member/member.module.ts --group --spec --api --creators
#ng generate @angular/material:dashboard member/components/Dashboard --module=member
cd ../

chmod -R a+rw frontend2

rsync -a frontend2/ ./
rm -rf frontend2