# MySQL Installer
https://www.mysql.com/
https://cdn.mysql.com//Downloads/MySQLInstaller/mysql-installer-web-community-8.0.42.0.msi

# MySQL Server
https://www.mysql.com/
https://cdn.mysql.com//Downloads/MySQL-8.0/mysql-8.0.42-winx64.zip

# MySQL Workbench
https://www.mysql.com/
https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-8.0.42-winx64.msi

# Node.js
https://nodejs.org/pt
https://nodejs.org/dist/v16.16.0/node-v16.16.0-x64.msi

#Step 1 - configuração inicial do projeto - Backend: configuração do servidor
mkdir backend
cd backend
npx gitignore node

npm init -y

npm install express

npm install typescript --save-dev
npm install ts-node-dev --save-dev
npm install @types/express --save-dev
npm install @types/node --save-dev

npx tsc --init
cat << EOF | sed 's/^\t//' > tsconfig.json
	{
		"compilerOptions": {
			/* Visit https://aka.ms/tsconfig to read more about this file */
			/* Projects */
			// "incremental": true,                              /* Save .tsbuildinfo files to allow for incremental compilation of projects. */
			// "composite": true,                                /* Enable constraints that allow a TypeScript project to be used with project references. */
			// "tsBuildInfoFile": "./.tsbuildinfo",              /* Specify the path to .tsbuildinfo incremental compilation file. */
			// "disableSourceOfProjectReferenceRedirect": true,  /* Disable preferring source files instead of declaration files when referencing composite projects. */
			// "disableSolutionSearching": true,                 /* Opt a project out of multi-project reference checking when editing. */
			// "disableReferencedProjectLoad": true,             /* Reduce the number of projects loaded automatically by TypeScript. */
			/* Language and Environment */
			"target": "es2016", /* Set the JavaScript language version for emitted JavaScript and include compatible library declarations. */
			// "lib": [],                                        /* Specify a set of bundled library declaration files that describe the target runtime environment. */
			// "jsx": "preserve",                                /* Specify what JSX code is generated. */
			// "libReplacement": true,                           /* Enable lib replacement. */
			"experimentalDecorators": true, /* Enable experimental support for legacy experimental decorators. */
			"emitDecoratorMetadata": true, /* Emit design-type metadata for decorated declarations in source files. */
			// "jsxFactory": "",                                 /* Specify the JSX factory function used when targeting React JSX emit, e.g. 'React.createElement' or 'h'. */
			// "jsxFragmentFactory": "",                         /* Specify the JSX Fragment reference used for fragments when targeting React JSX emit e.g. 'React.Fragment' or 'Fragment'. */
			// "jsxImportSource": "",                            /* Specify module specifier used to import the JSX factory functions when using 'jsx: react-jsx*'. */
			// "reactNamespace": "",                             /* Specify the object invoked for 'createElement'. This only applies when targeting 'react' JSX emit. */
			// "noLib": true,                                    /* Disable including any library files, including the default lib.d.ts. */
			// "useDefineForClassFields": true,                  /* Emit ECMAScript-standard-compliant class fields. */
			// "moduleDetection": "auto",                        /* Control what method is used to detect module-format JS files. */
			/* Modules */
			"module": "commonjs", /* Specify what module code is generated. */
			"rootDir": "./src", /* Specify the root folder within your source files. */
			// "moduleResolution": "node10",                     /* Specify how TypeScript looks up a file from a given module specifier. */
			// "baseUrl": "./",                                  /* Specify the base directory to resolve non-relative module names. */
			// "paths": {},                                      /* Specify a set of entries that re-map imports to additional lookup locations. */
			// "rootDirs": [],                                   /* Allow multiple folders to be treated as one when resolving modules. */
			// "typeRoots": [],                                  /* Specify multiple folders that act like './node_modules/@types'. */
			// "types": [],                                      /* Specify type package names to be included without being referenced in a source file. */
			// "allowUmdGlobalAccess": true,                     /* Allow accessing UMD globals from modules. */
			// "moduleSuffixes": [],                             /* List of file name suffixes to search when resolving a module. */
			// "allowImportingTsExtensions": true,               /* Allow imports to include TypeScript file extensions. Requires '--moduleResolution bundler' and either '--noEmit' or '--emitDeclarationOnly' to be set. */
			// "rewriteRelativeImportExtensions": true,          /* Rewrite '.ts', '.tsx', '.mts', and '.cts' file extensions in relative import paths to their JavaScript equivalent in output files. */
			// "resolvePackageJsonExports": true,                /* Use the package.json 'exports' field when resolving package imports. */
			// "resolvePackageJsonImports": true,                /* Use the package.json 'imports' field when resolving imports. */
			// "customConditions": [],                           /* Conditions to set in addition to the resolver-specific defaults when resolving imports. */
			// "noUncheckedSideEffectImports": true,             /* Check side effect imports. */
			// "resolveJsonModule": true,                        /* Enable importing .json files. */
			// "allowArbitraryExtensions": true,                 /* Enable importing files with any extension, provided a declaration file is present. */
			// "noResolve": true,                                /* Disallow 'import's, 'require's or '<reference>'s from expanding the number of files TypeScript should add to a project. */
			/* JavaScript Support */
			// "allowJs": true,                                  /* Allow JavaScript files to be a part of your program. Use the 'checkJS' option to get errors from these files. */
			// "checkJs": true,                                  /* Enable error reporting in type-checked JavaScript files. */
			// "maxNodeModuleJsDepth": 1,                        /* Specify the maximum folder depth used for checking JavaScript files from 'node_modules'. Only applicable with 'allowJs'. */
			/* Emit */
			// "declaration": true,                              /* Generate .d.ts files from TypeScript and JavaScript files in your project. */
			// "declarationMap": true,                           /* Create sourcemaps for d.ts files. */
			// "emitDeclarationOnly": true,                      /* Only output d.ts files and not JavaScript files. */
			// "sourceMap": true,                                /* Create source map files for emitted JavaScript files. */
			// "inlineSourceMap": true,                          /* Include sourcemap files inside the emitted JavaScript. */
			// "noEmit": true,                                   /* Disable emitting files from a compilation. */
			// "outFile": "./",                                  /* Specify a file that bundles all outputs into one JavaScript file. If 'declaration' is true, also designates a file that bundles all .d.ts output. */
			"outDir": "./dist", /* Specify an output folder for all emitted files. */
			// "removeComments": true,                           /* Disable emitting comments. */
			// "importHelpers": true,                            /* Allow importing helper functions from tslib once per project, instead of including them per-file. */
			// "downlevelIteration": true,                       /* Emit more compliant, but verbose and less performant JavaScript for iteration. */
			// "sourceRoot": "",                                 /* Specify the root path for debuggers to find the reference source code. */
			// "mapRoot": "",                                    /* Specify the location where debugger should locate map files instead of generated locations. */
			// "inlineSources": true,                            /* Include source code in the sourcemaps inside the emitted JavaScript. */
			// "emitBOM": true,                                  /* Emit a UTF-8 Byte Order Mark (BOM) in the beginning of output files. */
			// "newLine": "crlf",                                /* Set the newline character for emitting files. */
			// "stripInternal": true,                            /* Disable emitting declarations that have '@internal' in their JSDoc comments. */
			// "noEmitHelpers": true,                            /* Disable generating custom helper functions like '__extends' in compiled output. */
			// "noEmitOnError": true,                            /* Disable emitting files if any type checking errors are reported. */
			// "preserveConstEnums": true,                       /* Disable erasing 'const enum' declarations in generated code. */
			// "declarationDir": "./",                           /* Specify the output directory for generated declaration files. */
			/* Interop Constraints */
			// "isolatedModules": true,                          /* Ensure that each file can be safely transpiled without relying on other imports. */
			// "verbatimModuleSyntax": true,                     /* Do not transform or elide any imports or exports not marked as type-only, ensuring they are written in the output file's format based on the 'module' setting. */
			// "isolatedDeclarations": true,                     /* Require sufficient annotation on exports so other tools can trivially generate declaration files. */
			// "erasableSyntaxOnly": true,                       /* Do not allow runtime constructs that are not part of ECMAScript. */
			// "allowSyntheticDefaultImports": true,             /* Allow 'import x from y' when a module doesn't have a default export. */
			"esModuleInterop": true, /* Emit additional JavaScript to ease support for importing CommonJS modules. This enables 'allowSyntheticDefaultImports' for type compatibility. */
			// "preserveSymlinks": true,                         /* Disable resolving symlinks to their realpath. This correlates to the same flag in node. */
			"forceConsistentCasingInFileNames": true, /* Ensure that casing is correct in imports. */
			/* Type Checking */
			"strict": true, /* Enable all strict type-checking options. */
			// "noImplicitAny": true,                            /* Enable error reporting for expressions and declarations with an implied 'any' type. */
			// "strictNullChecks": true,                         /* When type checking, take into account 'null' and 'undefined'. */
			// "strictFunctionTypes": true,                      /* When assigning functions, check to ensure parameters and the return values are subtype-compatible. */
			// "strictBindCallApply": true,                      /* Check that the arguments for 'bind', 'call', and 'apply' methods match the original function. */
			// "strictPropertyInitialization": true,             /* Check for class properties that are declared but not set in the constructor. */
			// "strictBuiltinIteratorReturn": true,              /* Built-in iterators are instantiated with a 'TReturn' type of 'undefined' instead of 'any'. */
			// "noImplicitThis": true,                           /* Enable error reporting when 'this' is given the type 'any'. */
			// "useUnknownInCatchVariables": true,               /* Default catch clause variables as 'unknown' instead of 'any'. */
			// "alwaysStrict": true,                             /* Ensure 'use strict' is always emitted. */
			// "noUnusedLocals": true,                           /* Enable error reporting when local variables aren't read. */
			// "noUnusedParameters": true,                       /* Raise an error when a function parameter isn't read. */
			// "exactOptionalPropertyTypes": true,               /* Interpret optional property types as written, rather than adding 'undefined'. */
			// "noImplicitReturns": true,                        /* Enable error reporting for codepaths that do not explicitly return in a function. */
			// "noFallthroughCasesInSwitch": true,               /* Enable error reporting for fallthrough cases in switch statements. */
			// "noUncheckedIndexedAccess": true,                 /* Add 'undefined' to a type when accessed using an index. */
			// "noImplicitOverride": true,                       /* Ensure overriding members in derived classes are marked with an override modifier. */
			// "noPropertyAccessFromIndexSignature": true,       /* Enforces using indexed accessors for keys declared using an indexed type. */
			// "allowUnusedLabels": true,                        /* Disable error reporting for unused labels. */
			// "allowUnreachableCode": true,                     /* Disable error reporting for unreachable code. */
			/* Completeness */
			// "skipDefaultLibCheck": true,                      /* Skip type checking .d.ts files that are included with TypeScript. */
			"skipLibCheck": true /* Skip type checking all .d.ts files. */
		}
	}
EOF

mkdir src
touch src/index.ts
cat << EOF | sed 's/^\t//' > src/index.ts
	import express from 'express';

	const app = express();
	app.use(express.json());

	app.get('/', (req, res) => {
		res.send('Servidor rodando com TypeScript');
	});

	app.listen(3000, () => {
		console.log('Servidor rodando na porta 3000');
	});
EOF
code src/index.ts

cat << EOF | sed 's/^\t//' > package.json
	{
		"name": "backend",
		"version": "1.0.0",
		"description": "",
		"main": "index.js",
		"scripts": {
			"dev": "ts-node-dev --respawn src/index.ts",
			"test": "echo \"Error: no test specified\" && exit 1"
		},
		"keywords": [],
		"author": "",
		"license": "ISC",
		"dependencies": {
			"express": "^5.1.0"
		},
		"devDependencies": {
			"@types/express": "^5.0.3",
			"@types/node": "^24.0.1",
			"ts-node-dev": "^2.0.0",
			"typescript": "^5.8.3"
		}
	}
EOF
code  package.json

npm run dev

#Step 2 - crud user - Backend: configuração do banco de dados 
npm install typeorm
npm install reflect-metadata 
npm install mysql2

# Step 3 - Etapa 2: Backend: crud user
mkdir src/config
touch src/config/data-source.ts
cat << EOF | sed 's/^\t//' > src/config/data-source.ts
	import 'reflect-metadata';
	import { DataSource } from 'typeorm';
	import { User } from '../entities/User';

	export const AppDataSource = new DataSource({
		type: 'mysql',
		host: 'localhost',
		port: 3306,
		username: 'root',
		password: '',
		database: 'cloudged',
		synchronize: true,
		entities: [User],
	});
EOF
code src/confif/data-source.ts

mkdir src/entities
touch src/entities/User.ts
cat << EOF | sed 's/^\t//' > src/entities/User.ts
	import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

	@Entity()
	export class User {
		@PrimaryGeneratedColumn()
		id!: number;

		@Column()
		nome!: string;

		@Column({ unique: true })
		email!: string;

		@Column()
		senha!: string;
	}
EOF
code src/entities/User.ts

mkdir src/daos
touch src/daos/UserDao.ts

mkdir src/controllers
touch src/controllers/UserController.ts

mkdir src/routes
touch src/routes/UsuarioRoutes.ts

# Step 4 - Autenticação com JWT
npm install jsonwebtoken
npm install @types/jsonwebtoken --save-dev

mkdir src/config -p
touch src/config/auth.ts
code  src/config/auth.ts

mkdir src/controllers -p
touch src/controllers/authController.ts
code  src/controllers/authController.ts

mkdir src/routes -p
touch src/routes/authRoutes.ts
code  src/routes/authRoutes.ts

mkdir src/daos -p
touch src/daos/authDao.ts
code  src/daos/authDao.ts

# Step 5 - Middleware
mkdir src/middlewares -p
touch src/middlewares/authMiddleware.ts
code  src/middlewares/authMiddleware.ts