library angulardart_flight_school.web.addressbook.generated_type_factory_maps;

import 'package:di/di.dart';
import 'package:di/src/reflector_static.dart';

import 'package:angular/core_dom/module_internal.dart' as import_0;
import 'package:angular/core/module_internal.dart' as import_1;
import 'package:perf_api/perf_api.dart' as import_2;
import 'package:di/src/injector.dart' as import_4;
import 'package:angular/core/formatter.dart' as import_5;
import 'package:angular/core/registry.dart' as import_6;
import 'package:angular/core/parser/parser.dart' as import_7;
import 'package:angular/change_detection/ast_parser.dart' as import_8;
import 'dart:html' as import_9;
import 'package:angular/core/pending_async.dart' as import_10;
import 'package:angular/change_detection/watch_group.dart' as import_11;
import 'package:angular/core_dom/type_to_uri_mapper.dart' as import_12;
import 'package:angular/core_dom/resource_url_resolver.dart' as import_13;
import 'package:angular/cache/module.dart' as import_14;
import 'package:angular/directive/module.dart' as import_15;
import 'package:angular/core_dom/directive_injector.dart' as import_16;
import 'package:angular/core/parser/lexer.dart' as import_17;
import 'package:angular/change_detection/change_detection.dart' as import_18;
import 'package:angular/formatter/module_internal.dart' as import_19;
import 'package:angular/animate/module.dart' as import_20;
import 'package:angular/routing/module.dart' as import_21;
import 'package:route_hierarchical/client.dart' as import_22;
import 'package:angular/application.dart' as import_23;
import 'package:angular/cache/js_cache_register.dart' as import_24;
import 'package:angulardart_flight_school/decorators.dart' as import_25;
import 'package:angulardart_flight_school/services.dart' as import_26;
import 'package:angulardart_flight_school/formatters.dart' as import_27;
import 'package:angulardart_flight_school/components.dart' as import_28;

final Key _KEY_ExceptionHandler = new Key(import_1.ExceptionHandler);
final Key _KEY_BrowserCookies = new Key(import_0.BrowserCookies);
final Key _KEY_Profiler = new Key(import_2.Profiler);
final Key _KEY_Expando = new Key(Expando);
final Key _KEY_Injector = new Key(import_4.Injector);
final Key _KEY_FormatterMap = new Key(import_5.FormatterMap);
final Key _KEY_MetadataExtractor = new Key(import_6.MetadataExtractor);
final Key _KEY_DirectiveSelectorFactory = new Key(import_0.DirectiveSelectorFactory);
final Key _KEY_Parser = new Key(import_7.Parser);
final Key _KEY_CompilerConfig = new Key(import_0.CompilerConfig);
final Key _KEY_ASTParser = new Key(import_8.ASTParser);
final Key _KEY_ComponentFactory = new Key(import_0.ComponentFactory);
final Key _KEY_ShadowDomComponentFactory = new Key(import_0.ShadowDomComponentFactory);
final Key _KEY_TranscludingComponentFactory = new Key(import_0.TranscludingComponentFactory);
final Key _KEY_Node = new Key(import_9.Node);
final Key _KEY_ShadowRoot = new Key(import_9.ShadowRoot);
final Key _KEY_HttpDefaultHeaders = new Key(import_0.HttpDefaultHeaders);
final Key _KEY_LocationWrapper = new Key(import_0.LocationWrapper);
final Key _KEY_UrlRewriter = new Key(import_0.UrlRewriter);
final Key _KEY_HttpBackend = new Key(import_0.HttpBackend);
final Key _KEY_HttpDefaults = new Key(import_0.HttpDefaults);
final Key _KEY_HttpInterceptors = new Key(import_0.HttpInterceptors);
final Key _KEY_RootScope = new Key(import_1.RootScope);
final Key _KEY_HttpConfig = new Key(import_0.HttpConfig);
final Key _KEY_VmTurnZone = new Key(import_1.VmTurnZone);
final Key _KEY_PendingAsync = new Key(import_10.PendingAsync);
final Key _KEY_AST = new Key(import_11.AST);
final Key _KEY_Scope = new Key(import_1.Scope);
final Key _KEY_NodeAttrs = new Key(import_0.NodeAttrs);
final Key _KEY_String = new Key(String);
final Key _KEY_Element = new Key(import_9.Element);
final Key _KEY_Animate = new Key(import_0.Animate);
final Key _KEY_DestinationLightDom = new Key(import_0.DestinationLightDom);
final Key _KEY_ElementBinderFactory = new Key(import_0.ElementBinderFactory);
final Key _KEY_Interpolate = new Key(import_1.Interpolate);
final Key _KEY_ViewFactoryCache = new Key(import_0.ViewFactoryCache);
final Key _KEY_PlatformJsBasedShim = new Key(import_0.PlatformJsBasedShim);
final Key _KEY_TypeToUriMapper = new Key(import_12.TypeToUriMapper);
final Key _KEY_ResourceUrlResolver = new Key(import_13.ResourceUrlResolver);
final Key _KEY_Http = new Key(import_0.Http);
final Key _KEY_TemplateCache = new Key(import_0.TemplateCache);
final Key _KEY_ComponentCssRewriter = new Key(import_0.ComponentCssRewriter);
final Key _KEY_NodeTreeSanitizer = new Key(import_9.NodeTreeSanitizer);
final Key _KEY_CacheRegister = new Key(import_14.CacheRegister);
final Key _KEY_DefaultPlatformShim = new Key(import_0.DefaultPlatformShim);
final Key _KEY_SourceLightDom = new Key(import_0.SourceLightDom);
final Key _KEY_View = new Key(import_0.View);
final Key _KEY_Compiler = new Key(import_0.Compiler);
final Key _KEY_ElementProbe = new Key(import_0.ElementProbe);
final Key _KEY_NodeValidator = new Key(import_9.NodeValidator);
final Key _KEY_NgElement = new Key(import_0.NgElement);
final Key _KEY_ViewFactory = new Key(import_0.ViewFactory);
final Key _KEY_ViewPort = new Key(import_0.ViewPort);
final Key _KEY_DirectiveInjector = new Key(import_16.DirectiveInjector);
final Key _KEY_DirectiveMap = new Key(import_0.DirectiveMap);
final Key _KEY_NgModel = new Key(import_15.NgModel);
final Key _KEY_NgTrueValue = new Key(import_15.NgTrueValue);
final Key _KEY_NgFalseValue = new Key(import_15.NgFalseValue);
final Key _KEY_NgModelOptions = new Key(import_15.NgModelOptions);
final Key _KEY_NgBindTypeForDateLike = new Key(import_15.NgBindTypeForDateLike);
final Key _KEY_NgValue = new Key(import_15.NgValue);
final Key _KEY_BoundViewFactory = new Key(import_0.BoundViewFactory);
final Key _KEY_NgSwitch = new Key(import_15.NgSwitch);
final Key _KEY_InputSelect = new Key(import_15.InputSelect);
final Key _KEY_Lexer = new Key(import_17.Lexer);
final Key _KEY_ParserBackend = new Key(import_7.ParserBackend);
final Key _KEY_ClosureMap = new Key(import_7.ClosureMap);
final Key _KEY_ScopeStatsEmitter = new Key(import_1.ScopeStatsEmitter);
final Key _KEY_ScopeStatsConfig = new Key(import_1.ScopeStatsConfig);
final Key _KEY_Object = new Key(Object);
final Key _KEY_FieldGetterFactory = new Key(import_18.FieldGetterFactory);
final Key _KEY_ScopeDigestTTL = new Key(import_1.ScopeDigestTTL);
final Key _KEY_ScopeStats = new Key(import_1.ScopeStats);
final Key _KEY_ResourceResolverConfig = new Key(import_13.ResourceResolverConfig);
final Key _KEY_AnimationFrame = new Key(import_20.AnimationFrame);
final Key _KEY_Window = new Key(import_9.Window);
final Key _KEY_AnimationLoop = new Key(import_20.AnimationLoop);
final Key _KEY_CssAnimationMap = new Key(import_20.CssAnimationMap);
final Key _KEY_AnimationOptimizer = new Key(import_20.AnimationOptimizer);
final Key _KEY_RouteInitializer = new Key(import_21.RouteInitializer);
final Key _KEY_Router = new Key(import_22.Router);
final Key _KEY_Application = new Key(import_23.Application);
final Key _KEY_NgRoutingHelper = new Key(import_21.NgRoutingHelper);
final Key _KEY_Contacts = new Key(import_26.Contacts);
final Key _KEY_RouteProvider = new Key(import_21.RouteProvider);
final Map<Type, Function> typeFactories = <Type, Function>{
  import_0.Animate: () => new import_0.Animate(),
  import_0.BrowserCookies: (a1) => new import_0.BrowserCookies(a1),
  import_0.Cookies: (a1) => new import_0.Cookies(a1),
  import_0.Compiler: (a1, a2) => new import_0.Compiler(a1, a2),
  import_0.CompilerConfig: () => new import_0.CompilerConfig(),
  import_0.DirectiveMap: (a1, a2, a3, a4) => new import_0.DirectiveMap(a1, a2, a3, a4),
  import_0.ElementBinderFactory: (a1, a2, a3, a4, a5, a6, a7, a8) => new import_0.ElementBinderFactory(a1, a2, a3, a4, a5, a6, a7, a8),
  import_0.EventHandler: (a1, a2, a3) => new import_0.EventHandler(a1, a2, a3),
  import_0.ShadowRootEventHandler: (a1, a2, a3) => new import_0.ShadowRootEventHandler(a1, a2, a3),
  import_0.DefaultShadowBoundary: () => new import_0.DefaultShadowBoundary(),
  import_0.ShadowRootBoundary: (a1) => new import_0.ShadowRootBoundary(a1),
  import_0.UrlRewriter: () => new import_0.UrlRewriter(),
  import_0.HttpBackend: () => new import_0.HttpBackend(),
  import_0.LocationWrapper: () => new import_0.LocationWrapper(),
  import_0.HttpInterceptors: () => new import_0.HttpInterceptors(),
  import_0.HttpDefaultHeaders: () => new import_0.HttpDefaultHeaders(),
  import_0.HttpDefaults: (a1) => new import_0.HttpDefaults(a1),
  import_0.Http: (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10) => new import_0.Http(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10),
  import_0.HttpConfig: () => new import_0.HttpConfig(),
  import_0.TextMustache: (a1, a2, a3) => new import_0.TextMustache(a1, a2, a3),
  import_0.AttrMustache: (a1, a2, a3, a4) => new import_0.AttrMustache(a1, a2, a3, a4),
  import_0.NgElement: (a1, a2, a3, a4) => new import_0.NgElement(a1, a2, a3, a4),
  import_0.DirectiveSelectorFactory: (a1, a2, a3, a4, a5) => new import_0.DirectiveSelectorFactory(a1, a2, a3, a4, a5),
  import_0.ShadowDomComponentFactory: (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11) => new import_0.ShadowDomComponentFactory(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11),
  import_0.ComponentCssRewriter: () => new import_0.ComponentCssRewriter(),
  import_0.TranscludingComponentFactory: (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11) => new import_0.TranscludingComponentFactory(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11),
  import_0.Content: (a1, a2, a3, a4) => new import_0.Content(a1, a2, a3, a4),
  import_0.NullTreeSanitizer: () => new import_0.NullTreeSanitizer(),
  import_0.ViewFactoryCache: (a1, a2, a3, a4, a5, a6) => new import_0.ViewFactoryCache(a1, a2, a3, a4, a5, a6),
  import_0.PlatformJsBasedShim: () => new import_0.PlatformJsBasedShim(),
  import_0.DefaultPlatformShim: () => new import_0.DefaultPlatformShim(),
  import_15.AHref: (a1, a2) => new import_15.AHref(a1, a2),
  import_15.NgBaseCss: () => new import_15.NgBaseCss(),
  import_15.NgBind: (a1, a2) => new import_15.NgBind(a1, a2),
  import_15.NgBindHtml: (a1, a2) => new import_15.NgBindHtml(a1, a2),
  import_15.NgBindTemplate: (a1) => new import_15.NgBindTemplate(a1),
  import_15.NgClass: (a1, a2, a3) => new import_15.NgClass(a1, a2, a3),
  import_15.NgClassOdd: (a1, a2, a3) => new import_15.NgClassOdd(a1, a2, a3),
  import_15.NgClassEven: (a1, a2, a3) => new import_15.NgClassEven(a1, a2, a3),
  import_15.NgEvent: (a1, a2) => new import_15.NgEvent(a1, a2),
  import_15.NgCloak: (a1, a2) => new import_15.NgCloak(a1, a2),
  import_15.NgIf: (a1, a2, a3) => new import_15.NgIf(a1, a2, a3),
  import_15.NgUnless: (a1, a2, a3) => new import_15.NgUnless(a1, a2, a3),
  import_15.NgInclude: (a1, a2, a3, a4, a5) => new import_15.NgInclude(a1, a2, a3, a4, a5),
  import_15.NgModel: (a1, a2, a3, a4, a5, a6) => new import_15.NgModel(a1, a2, a3, a4, a5, a6),
  import_15.InputCheckbox: (a1, a2, a3, a4, a5, a6) => new import_15.InputCheckbox(a1, a2, a3, a4, a5, a6),
  import_15.InputTextLike: (a1, a2, a3, a4) => new import_15.InputTextLike(a1, a2, a3, a4),
  import_15.InputNumberLike: (a1, a2, a3, a4) => new import_15.InputNumberLike(a1, a2, a3, a4),
  import_15.NgBindTypeForDateLike: (a1) => new import_15.NgBindTypeForDateLike(a1),
  import_15.InputDateLike: (a1, a2, a3, a4, a5) => new import_15.InputDateLike(a1, a2, a3, a4, a5),
  import_15.NgValue: (a1) => new import_15.NgValue(a1),
  import_15.NgTrueValue: (a1) => new import_15.NgTrueValue(a1),
  import_15.NgFalseValue: (a1) => new import_15.NgFalseValue(a1),
  import_15.InputRadio: (a1, a2, a3, a4, a5) => new import_15.InputRadio(a1, a2, a3, a4, a5),
  import_15.ContentEditable: (a1, a2, a3, a4) => new import_15.ContentEditable(a1, a2, a3, a4),
  import_15.NgPluralize: (a1, a2, a3, a4) => new import_15.NgPluralize(a1, a2, a3, a4),
  import_15.NgRepeat: (a1, a2, a3, a4, a5) => new import_15.NgRepeat(a1, a2, a3, a4, a5),
  import_15.NgTemplate: (a1, a2) => new import_15.NgTemplate(a1, a2),
  import_15.NgHide: (a1, a2) => new import_15.NgHide(a1, a2),
  import_15.NgShow: (a1, a2) => new import_15.NgShow(a1, a2),
  import_15.NgBooleanAttribute: (a1) => new import_15.NgBooleanAttribute(a1),
  import_15.NgSource: (a1) => new import_15.NgSource(a1),
  import_15.NgAttribute: (a1) => new import_15.NgAttribute(a1),
  import_15.NgStyle: (a1, a2) => new import_15.NgStyle(a1, a2),
  import_15.NgSwitch: (a1) => new import_15.NgSwitch(a1),
  import_15.NgSwitchWhen: (a1, a2, a3) => new import_15.NgSwitchWhen(a1, a2, a3),
  import_15.NgSwitchDefault: (a1, a2, a3) => new import_15.NgSwitchDefault(a1, a2, a3),
  import_15.NgNonBindable: () => new import_15.NgNonBindable(),
  import_15.InputSelect: (a1, a2, a3, a4) => new import_15.InputSelect(a1, a2, a3, a4),
  import_15.OptionValue: (a1, a2, a3) => new import_15.OptionValue(a1, a2, a3),
  import_15.NgForm: (a1, a2, a3, a4) => new import_15.NgForm(a1, a2, a3, a4),
  import_15.NgModelRequiredValidator: (a1) => new import_15.NgModelRequiredValidator(a1),
  import_15.NgModelUrlValidator: (a1) => new import_15.NgModelUrlValidator(a1),
  import_15.NgModelColorValidator: (a1) => new import_15.NgModelColorValidator(a1),
  import_15.NgModelEmailValidator: (a1) => new import_15.NgModelEmailValidator(a1),
  import_15.NgModelNumberValidator: (a1) => new import_15.NgModelNumberValidator(a1),
  import_15.NgModelMaxNumberValidator: (a1) => new import_15.NgModelMaxNumberValidator(a1),
  import_15.NgModelMinNumberValidator: (a1) => new import_15.NgModelMinNumberValidator(a1),
  import_15.NgModelPatternValidator: (a1) => new import_15.NgModelPatternValidator(a1),
  import_15.NgModelMinLengthValidator: (a1) => new import_15.NgModelMinLengthValidator(a1),
  import_15.NgModelMaxLengthValidator: (a1) => new import_15.NgModelMaxLengthValidator(a1),
  import_15.NgModelOptions: () => new import_15.NgModelOptions(),
  import_7.Parser: (a1, a2, a3) => new import_7.Parser(a1, a2, a3),
  import_7.RuntimeParserBackend: (a1) => new import_7.RuntimeParserBackend(a1),
  import_5.FormatterMap: (a1, a2) => new import_5.FormatterMap(a1, a2),
  import_1.ExceptionHandler: () => new import_1.ExceptionHandler(),
  import_1.Interpolate: (a1) => new import_1.Interpolate(a1),
  import_1.ScopeDigestTTL: () => new import_1.ScopeDigestTTL(),
  import_1.ScopeStats: (a1, a2) => new import_1.ScopeStats(a1, a2),
  import_1.ScopeStatsEmitter: () => new import_1.ScopeStatsEmitter(),
  import_1.ScopeStatsConfig: () => new import_1.ScopeStatsConfig(),
  import_1.RootScope: (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11) => new import_1.RootScope(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11),
  import_10.PendingAsync: () => new import_10.PendingAsync(),
  import_17.Lexer: () => new import_17.Lexer(),
  import_8.ASTParser: (a1, a2) => new import_8.ASTParser(a1, a2),
  import_14.CacheRegister: () => new import_14.CacheRegister(),
  import_13.ResourceUrlResolver: (a1, a2) => new import_13.ResourceUrlResolver(a1, a2),
  import_13.ResourceResolverConfig: () => new import_13.ResourceResolverConfig(),
  import_19.Currency: () => new import_19.Currency(),
  import_19.Date: () => new import_19.Date(),
  import_19.Filter: (a1) => new import_19.Filter(a1),
  import_19.Json: () => new import_19.Json(),
  import_19.LimitTo: (a1) => new import_19.LimitTo(a1),
  import_19.Lowercase: () => new import_19.Lowercase(),
  import_19.Arrayify: () => new import_19.Arrayify(),
  import_19.Number: () => new import_19.Number(),
  import_19.OrderBy: (a1) => new import_19.OrderBy(a1),
  import_19.Uppercase: () => new import_19.Uppercase(),
  import_19.Stringify: () => new import_19.Stringify(),
  import_20.AnimationLoop: (a1, a2, a3) => new import_20.AnimationLoop(a1, a2, a3),
  import_20.AnimationFrame: (a1) => new import_20.AnimationFrame(a1),
  import_20.AnimationOptimizer: (a1) => new import_20.AnimationOptimizer(a1),
  import_20.CssAnimate: (a1, a2, a3) => new import_20.CssAnimate(a1, a2, a3),
  import_20.CssAnimationMap: () => new import_20.CssAnimationMap(),
  import_20.NgAnimate: (a1, a2) => new import_20.NgAnimate(a1, a2),
  import_20.NgAnimateChildren: (a1, a2) => new import_20.NgAnimateChildren(a1, a2),
  import_21.NgRoutingUsePushState: () => new import_21.NgRoutingUsePushState(),
  import_21.NgRoutingHelper: (a1, a2, a3, a4) => new import_21.NgRoutingHelper(a1, a2, a3, a4),
  import_21.NgView: (a1, a2, a3, a4, a5, a6) => new import_21.NgView(a1, a2, a3, a4, a5, a6),
  import_21.NgBindRoute: (a1, a2, a3) => new import_21.NgBindRoute(a1, a2, a3),
  import_24.JsCacheRegister: (a1) => new import_24.JsCacheRegister(a1),
  import_25.Tooltip: (a1) => new import_25.Tooltip(a1),
  import_26.Contacts: () => new import_26.Contacts(),
  import_27.SearchFilter: () => new import_27.SearchFilter(),
  import_28.VCard: () => new import_28.VCard(),
  import_28.VCardList: (a1) => new import_28.VCardList(a1),
  import_28.ContactShortList: (a1) => new import_28.ContactShortList(a1),
  import_28.ContactAdd: (a1, a2) => new import_28.ContactAdd(a1, a2),
  import_28.ContactEdit: (a1, a2, a3) => new import_28.ContactEdit(a1, a2, a3),
  import_28.ContactView: (a1, a2, a3) => new import_28.ContactView(a1, a2, a3),
  import_2.Profiler: () => new import_2.Profiler(),
};
final Map<Type, List<Key>> parameterKeys = {
  import_0.Animate: const[],
  import_0.BrowserCookies: [_KEY_ExceptionHandler],
  import_0.Cookies: [_KEY_BrowserCookies],
  import_0.Compiler: [_KEY_Profiler, _KEY_Expando],
  import_0.CompilerConfig: const[],
  import_0.DirectiveMap: [_KEY_Injector, _KEY_FormatterMap, _KEY_MetadataExtractor, _KEY_DirectiveSelectorFactory],
  import_0.ElementBinderFactory: [_KEY_Parser, _KEY_Profiler, _KEY_CompilerConfig, _KEY_Expando, _KEY_ASTParser, _KEY_ComponentFactory, _KEY_ShadowDomComponentFactory, _KEY_TranscludingComponentFactory],
  import_0.EventHandler: [_KEY_Node, _KEY_Expando, _KEY_ExceptionHandler],
  import_0.ShadowRootEventHandler: [_KEY_ShadowRoot, _KEY_Expando, _KEY_ExceptionHandler],
  import_0.DefaultShadowBoundary: const[],
  import_0.ShadowRootBoundary: [_KEY_ShadowRoot],
  import_0.UrlRewriter: const[],
  import_0.HttpBackend: const[],
  import_0.LocationWrapper: const[],
  import_0.HttpInterceptors: const[],
  import_0.HttpDefaultHeaders: const[],
  import_0.HttpDefaults: [_KEY_HttpDefaultHeaders],
  import_0.Http: [_KEY_BrowserCookies, _KEY_LocationWrapper, _KEY_UrlRewriter, _KEY_HttpBackend, _KEY_HttpDefaults, _KEY_HttpInterceptors, _KEY_RootScope, _KEY_HttpConfig, _KEY_VmTurnZone, _KEY_PendingAsync],
  import_0.HttpConfig: const[],
  import_0.TextMustache: [_KEY_Node, _KEY_AST, _KEY_Scope],
  import_0.AttrMustache: [_KEY_NodeAttrs, _KEY_String, _KEY_AST, _KEY_Scope],
  import_0.NgElement: [_KEY_Element, _KEY_RootScope, _KEY_Animate, _KEY_DestinationLightDom],
  import_0.DirectiveSelectorFactory: [_KEY_ElementBinderFactory, _KEY_Interpolate, _KEY_ASTParser, _KEY_FormatterMap, _KEY_Injector],
  import_0.ShadowDomComponentFactory: [_KEY_ViewFactoryCache, _KEY_PlatformJsBasedShim, _KEY_Expando, _KEY_CompilerConfig, _KEY_TypeToUriMapper, _KEY_ResourceUrlResolver, _KEY_Http, _KEY_TemplateCache, _KEY_ComponentCssRewriter, _KEY_NodeTreeSanitizer, _KEY_CacheRegister],
  import_0.ComponentCssRewriter: const[],
  import_0.TranscludingComponentFactory: [_KEY_Expando, _KEY_ViewFactoryCache, _KEY_CompilerConfig, _KEY_DefaultPlatformShim, _KEY_TypeToUriMapper, _KEY_ResourceUrlResolver, _KEY_Http, _KEY_TemplateCache, _KEY_ComponentCssRewriter, _KEY_NodeTreeSanitizer, _KEY_CacheRegister],
  import_0.Content: [_KEY_Element, _KEY_SourceLightDom, _KEY_DestinationLightDom, _KEY_View],
  import_0.NullTreeSanitizer: const[],
  import_0.ViewFactoryCache: [_KEY_Http, _KEY_TemplateCache, _KEY_Compiler, _KEY_NodeTreeSanitizer, _KEY_ResourceUrlResolver, _KEY_CacheRegister],
  import_0.PlatformJsBasedShim: const[],
  import_0.DefaultPlatformShim: const[],
  import_15.AHref: [_KEY_Element, _KEY_VmTurnZone],
  import_15.NgBaseCss: const[],
  import_15.NgBind: [_KEY_Element, _KEY_ElementProbe],
  import_15.NgBindHtml: [_KEY_Element, _KEY_NodeValidator],
  import_15.NgBindTemplate: [_KEY_Element],
  import_15.NgClass: [_KEY_NgElement, _KEY_Scope, _KEY_NodeAttrs],
  import_15.NgClassOdd: [_KEY_NgElement, _KEY_Scope, _KEY_NodeAttrs],
  import_15.NgClassEven: [_KEY_NgElement, _KEY_Scope, _KEY_NodeAttrs],
  import_15.NgEvent: [_KEY_Element, _KEY_Scope],
  import_15.NgCloak: [_KEY_Element, _KEY_Animate],
  import_15.NgIf: [_KEY_ViewFactory, _KEY_ViewPort, _KEY_Scope],
  import_15.NgUnless: [_KEY_ViewFactory, _KEY_ViewPort, _KEY_Scope],
  import_15.NgInclude: [_KEY_Element, _KEY_Scope, _KEY_ViewFactoryCache, _KEY_DirectiveInjector, _KEY_DirectiveMap],
  import_15.NgModel: [_KEY_Scope, _KEY_NgElement, _KEY_DirectiveInjector, _KEY_NodeAttrs, _KEY_Animate, _KEY_ElementProbe],
  import_15.InputCheckbox: [_KEY_Element, _KEY_NgModel, _KEY_Scope, _KEY_NgTrueValue, _KEY_NgFalseValue, _KEY_NgModelOptions],
  import_15.InputTextLike: [_KEY_Element, _KEY_NgModel, _KEY_Scope, _KEY_NgModelOptions],
  import_15.InputNumberLike: [_KEY_Element, _KEY_NgModel, _KEY_Scope, _KEY_NgModelOptions],
  import_15.NgBindTypeForDateLike: [_KEY_Element],
  import_15.InputDateLike: [_KEY_Element, _KEY_NgModel, _KEY_Scope, _KEY_NgBindTypeForDateLike, _KEY_NgModelOptions],
  import_15.NgValue: [_KEY_Element],
  import_15.NgTrueValue: [_KEY_Element],
  import_15.NgFalseValue: [_KEY_Element],
  import_15.InputRadio: [_KEY_Element, _KEY_NgModel, _KEY_Scope, _KEY_NgValue, _KEY_NodeAttrs],
  import_15.ContentEditable: [_KEY_Element, _KEY_NgModel, _KEY_Scope, _KEY_NgModelOptions],
  import_15.NgPluralize: [_KEY_Scope, _KEY_Element, _KEY_Interpolate, _KEY_FormatterMap],
  import_15.NgRepeat: [_KEY_ViewPort, _KEY_BoundViewFactory, _KEY_Scope, _KEY_Parser, _KEY_FormatterMap],
  import_15.NgTemplate: [_KEY_Element, _KEY_TemplateCache],
  import_15.NgHide: [_KEY_Element, _KEY_Animate],
  import_15.NgShow: [_KEY_Element, _KEY_Animate],
  import_15.NgBooleanAttribute: [_KEY_NgElement],
  import_15.NgSource: [_KEY_NgElement],
  import_15.NgAttribute: [_KEY_NodeAttrs],
  import_15.NgStyle: [_KEY_Element, _KEY_Scope],
  import_15.NgSwitch: [_KEY_Scope],
  import_15.NgSwitchWhen: [_KEY_NgSwitch, _KEY_ViewPort, _KEY_BoundViewFactory],
  import_15.NgSwitchDefault: [_KEY_NgSwitch, _KEY_ViewPort, _KEY_BoundViewFactory],
  import_15.NgNonBindable: const[],
  import_15.InputSelect: [_KEY_Element, _KEY_NodeAttrs, _KEY_NgModel, _KEY_Scope],
  import_15.OptionValue: [_KEY_Element, _KEY_InputSelect, _KEY_NgValue],
  import_15.NgForm: [_KEY_Scope, _KEY_NgElement, _KEY_DirectiveInjector, _KEY_Animate],
  import_15.NgModelRequiredValidator: [_KEY_NgModel],
  import_15.NgModelUrlValidator: [_KEY_NgModel],
  import_15.NgModelColorValidator: [_KEY_NgModel],
  import_15.NgModelEmailValidator: [_KEY_NgModel],
  import_15.NgModelNumberValidator: [_KEY_NgModel],
  import_15.NgModelMaxNumberValidator: [_KEY_NgModel],
  import_15.NgModelMinNumberValidator: [_KEY_NgModel],
  import_15.NgModelPatternValidator: [_KEY_NgModel],
  import_15.NgModelMinLengthValidator: [_KEY_NgModel],
  import_15.NgModelMaxLengthValidator: [_KEY_NgModel],
  import_15.NgModelOptions: const[],
  import_7.Parser: [_KEY_Lexer, _KEY_ParserBackend, _KEY_CacheRegister],
  import_7.RuntimeParserBackend: [_KEY_ClosureMap],
  import_5.FormatterMap: [_KEY_Injector, _KEY_MetadataExtractor],
  import_1.ExceptionHandler: const[],
  import_1.Interpolate: [_KEY_CacheRegister],
  import_1.ScopeDigestTTL: const[],
  import_1.ScopeStats: [_KEY_ScopeStatsEmitter, _KEY_ScopeStatsConfig],
  import_1.ScopeStatsEmitter: const[],
  import_1.ScopeStatsConfig: const[],
  import_1.RootScope: [_KEY_Object, _KEY_Parser, _KEY_ASTParser, _KEY_FieldGetterFactory, _KEY_FormatterMap, _KEY_ExceptionHandler, _KEY_ScopeDigestTTL, _KEY_VmTurnZone, _KEY_ScopeStats, _KEY_CacheRegister, _KEY_PendingAsync],
  import_10.PendingAsync: const[],
  import_17.Lexer: const[],
  import_8.ASTParser: [_KEY_Parser, _KEY_ClosureMap],
  import_14.CacheRegister: const[],
  import_13.ResourceUrlResolver: [_KEY_TypeToUriMapper, _KEY_ResourceResolverConfig],
  import_13.ResourceResolverConfig: const[],
  import_19.Currency: const[],
  import_19.Date: const[],
  import_19.Filter: [_KEY_Parser],
  import_19.Json: const[],
  import_19.LimitTo: [_KEY_Injector],
  import_19.Lowercase: const[],
  import_19.Arrayify: const[],
  import_19.Number: const[],
  import_19.OrderBy: [_KEY_Parser],
  import_19.Uppercase: const[],
  import_19.Stringify: const[],
  import_20.AnimationLoop: [_KEY_AnimationFrame, _KEY_Profiler, _KEY_VmTurnZone],
  import_20.AnimationFrame: [_KEY_Window],
  import_20.AnimationOptimizer: [_KEY_Expando],
  import_20.CssAnimate: [_KEY_AnimationLoop, _KEY_CssAnimationMap, _KEY_AnimationOptimizer],
  import_20.CssAnimationMap: const[],
  import_20.NgAnimate: [_KEY_Element, _KEY_AnimationOptimizer],
  import_20.NgAnimateChildren: [_KEY_Element, _KEY_AnimationOptimizer],
  import_21.NgRoutingUsePushState: const[],
  import_21.NgRoutingHelper: [_KEY_RouteInitializer, _KEY_Injector, _KEY_Router, _KEY_Application],
  import_21.NgView: [_KEY_Element, _KEY_ViewFactoryCache, _KEY_DirectiveInjector, _KEY_Injector, _KEY_Router, _KEY_Scope],
  import_21.NgBindRoute: [_KEY_Router, _KEY_DirectiveInjector, _KEY_NgRoutingHelper],
  import_24.JsCacheRegister: [_KEY_CacheRegister],
  import_25.Tooltip: [_KEY_Element],
  import_26.Contacts: const[],
  import_27.SearchFilter: const[],
  import_28.VCard: const[],
  import_28.VCardList: [_KEY_Contacts],
  import_28.ContactShortList: [_KEY_Contacts],
  import_28.ContactAdd: [_KEY_Contacts, _KEY_Router],
  import_28.ContactEdit: [_KEY_Contacts, _KEY_RouteProvider, _KEY_Router],
  import_28.ContactView: [_KEY_Contacts, _KEY_RouteProvider, _KEY_Router],
  import_2.Profiler: const[],
};
setStaticReflectorAsDefault() => Module.DEFAULT_REFLECTOR = new GeneratedTypeFactories(typeFactories, parameterKeys);
