︠7ddc0e5b-95bc-4252-98fd-c733975b28a1︠
%md
# Title
Somne stuff.
## sub-heading
Type simple text. With latex maths $$f(x) = \int_0^x g(t) dt$$.
![](https://www.scipy.org/_static/images/bugs.png)
︡6e4cde5a-e48d-4ff0-98e2-165937892ca9︡{"done":true,"md":"# Title\nSomne stuff.\n## sub-heading\nType simple text. With latex maths $$f(x) = \\int_0^x g(t) dt$$.\n![](https://www.scipy.org/_static/images/bugs.png)"}
︠be6a9cf7-9a74-4f6f-81e0-6f227fe216e5s︠
def b(n):
    if n==4:
        return 4
    else:
        bn2 = b(n/2)
        return n^2/(2*bn2)*(sqrt(1+4*bn2^2/n^2) -1)
︡87bcee6c-e36d-4f83-aebc-52421f30dc0f︡{"done":true}︡
︠f7a0cc7b-6b6f-4eaf-9ce1-23e676dce25b︠
R10=RealField(200)
R10
︡9be32ec1-2f88-4c85-bbd9-5cb2ecafa9bc︡{"stdout":"Real Field with 200 bits of precision\n"}︡{"done":true}︡
︠46455b98-eba4-4a6c-ba99-07ffe0d7cc93s︠
b(8)
︡da25c75c-ad13-4383-a69e-cd274e17c708︡{"stdout":"8*sqrt(2) - 8\n"}︡{"done":true}︡
︠cdde52eb-f016-4cbd-bd04-a074430d0263︠
pi().n()
︡59a3b292-df5a-4727-a547-90144edd6701︡{"stdout":"3.14159265358979\n"}︡{"done":true}︡
︠a2cc2bbd-a573-44c4-955c-91f76e16b5d2︠
b(2^20).n()
︡ef6e4653-ff8e-4253-b2d1-bf5108f2bd89︡{"stdout":"3.14160058362634"}︡{"stdout":"\n"}︡{"done":true}︡
︠45e80ff4-6a58-4e10-bbc7-598dfd30c584︠
for i in (2..30):
    b(n(2^i))
︡628af438-6940-4310-93fe-9bfca516eeb8︡{"stdout":"4\n3.31370849898476\n3.18259787807453\n3.15172490742926\n3.14411838524587\n3.14222362994234\n3.14175036916970\n3.14163208070225\n3.14160251024197\n3.14159511771837\n3.14159326963175\n3.14159280837968\n3.14159269096297\n3.14159267557045\n3.14159269096297\n3.14159252378847\n3.14159086957911\n3.14159252378847\n3.14160058362633\n3.14159252378847\n3.14144515887080\n3.14097079560249\n3.13398329388536\n3.11105678802532\n3.05362474788830\n2.61983729517922\n3.05362474788830\n0.000000000000000\nNaN\n"}︡{"done":true}︡
︠371d55ce-18cc-469b-bc12-05df58be03d6︠
N=8
c = circle((0,0),1,color='black', thickness=2)
mp=[(cos(2*0*pi/N)+cos(2*pi/N))/2, (sin(2*0*pi/N)+sin(2*pi/N))/2]
d=sqrt(mp[0]^2+mp[1]^2)
s=1/d
lines=[line([(s*cos(2*i*pi/N),s*sin(2*i*pi/N)),(0,0)], color='black', linestyle='--') for i in (0..(N-1))]
ip=polygon2d([[cos(2*i*pi/N),sin(2*i*pi/N)] for i in (0..(N-1))], fill=false,color='black')
cp=polygon2d([[s*cos(2*i*pi/N),s*sin(2*i*pi/N)] for i in (0..(N-1))], fill=false,color='black')
#abel=text("$\frac{2\pi}{n}$",(0,0))
label=text(r"$\frac{2\pi}{n}$",(0.4,0.15),color='black', fontsize=28)
G=c+ip+cp+label
for i in (0..(N-1)):
    G+=lines[i]
show(G, axes=false)
G.save_image(filename='circlepolys.png',axes=false)
︡9ba50e1b-41fd-4cbe-be19-43ab50498b27︡{"file":{"filename":"/projects/a3801a5c-c6a5-4856-9e32-b6a99a7d2600/.sage/temp/compute5-us/4675/tmp_R4Sban.svg","show":true,"text":null,"uuid":"9bca84b9-d1b3-4272-a6f9-ee5823b6bed6"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠64cca9e2-7fc2-4775-be5b-37b0e48543f1︠
SymmetricGroup??
︡07cedfa9-8043-4c62-81e9-eb96045857c0︡{"code":{"filename":null,"lineno":-1,"mode":"python","source":"   File: /projects/sage/sage-7.3/local/lib/python2.7/site-packages/sage/groups/perm_gps/permgroup_named.py\n   Source:\n   class SymmetricGroup(PermutationGroup_symalt):\n    r\"\"\"\n    The full symmetric group of order `n!`, as a permutation group.\n\n    If `n` is a list or tuple of positive integers then it returns the\n    symmetric group of the associated set.\n\n    INPUT:\n\n    - ``n`` -- a positive integer, or list or tuple thereof\n\n    .. NOTE::\n\n        This group is also available via ``groups.permutation.Symmetric()``.\n\n    EXAMPLES::\n\n        sage: G = SymmetricGroup(8)\n        sage: G.order()\n        40320\n        sage: G\n        Symmetric group of order 8! as a permutation group\n        sage: G.degree()\n        8\n        sage: S8 = SymmetricGroup(8)\n        sage: G = SymmetricGroup([1,2,4,5])\n        sage: G\n        Symmetric group of order 4! as a permutation group\n        sage: G.domain()\n        {1, 2, 4, 5}\n        sage: G = SymmetricGroup(4)\n        sage: G\n        Symmetric group of order 4! as a permutation group\n        sage: G.domain()\n        {1, 2, 3, 4}\n        sage: G.category()\n        Join of Category of finite permutation groups\n         and Category of finite weyl groups\n\n    TESTS::\n\n        sage: groups.permutation.Symmetric(4)\n        Symmetric group of order 4! as a permutation group\n    \"\"\"\n    def __init__(self, domain=None):\n        \"\"\"\n        Initialize ``self``.\n\n        TESTS::\n\n            sage: TestSuite(SymmetricGroup(0)).run()\n            sage: TestSuite(SymmetricGroup(1)).run()\n            sage: TestSuite(SymmetricGroup(3)).run()\n        \"\"\"\n        from sage.categories.finite_weyl_groups import FiniteWeylGroups\n        from sage.categories.finite_permutation_groups import FinitePermutationGroups\n        from sage.categories.category import Category\n\n        #Note that we skip the call to the superclass initializer in order to\n        #avoid infinite recursion since SymmetricGroup is called by\n        #PermutationGroupElement\n        cat = Category.join([FinitePermutationGroups(), FiniteWeylGroups()])\n        super(PermutationGroup_generic, self).__init__(category=cat)\n\n        self._domain = domain\n        self._deg = len(self._domain)\n        self._domain_to_gap = {key: i+1 for i, key in enumerate(self._domain)}\n        self._domain_from_gap = {i+1: key for i, key in enumerate(self._domain)}\n\n        #Create the generators for the symmetric group\n        gens = [tuple(self._domain)]\n        if len(self._domain) > 2:\n            gens.append(tuple(self._domain[:2]))\n        self._gens = [self._element_class()(g, self, check=False)\n                      for g in gens]\n\n    def _gap_init_(self, gap=None):\n        \"\"\"\n        Return the string used to create this group in GAP.\n\n        EXAMPLES::\n\n            sage: S = SymmetricGroup(3)\n            sage: S._gap_init_()\n            'SymmetricGroup(3)'\n            sage: S = SymmetricGroup(['a', 'b', 'c'])\n            sage: S._gap_init_()\n            'SymmetricGroup(3)'\n        \"\"\"\n        return 'SymmetricGroup({})'.format(self.degree())\n\n    @cached_method\n    def index_set(self):\n        \"\"\"\n        Return the index set for the descents of the symmetric group ``self``.\n\n        EXAMPLES::\n\n            sage: S8 = SymmetricGroup(8)\n            sage: S8.index_set()\n            (1, 2, 3, 4, 5, 6, 7)\n\n            sage: S = SymmetricGroup([3,1,4,5])\n            sage: S.index_set()\n            (3, 1, 4)\n        \"\"\"\n        return tuple(self.domain()[:-1])\n\n    def __cmp__(self, x):\n        \"\"\"\n        Fast comparison for SymmetricGroups.\n\n        EXAMPLES::\n\n            sage: S8 = SymmetricGroup(8)\n            sage: S3 = SymmetricGroup(3)\n            sage: S8 > S3\n            True\n        \"\"\"\n        if isinstance(x, SymmetricGroup):\n            return cmp((self._deg, self._domain), (x._deg, x._domain))\n        return PermutationGroup_generic.__cmp__(self, x)\n\n    def _repr_(self):\n        \"\"\"\n        EXAMPLES::\n\n            sage: A = SymmetricGroup([2,3,7]); A\n            Symmetric group of order 3! as a permutation group\n        \"\"\"\n        return \"Symmetric group of order {}! as a permutation group\".format(self.degree())\n\n    def cartan_type(self):\n        r\"\"\"\n        Return the Cartan type of ``self``\n\n        The symmetric group `S_n` is a Coxeter group of type `A_{n-1}`.\n\n        EXAMPLES::\n\n            sage: A = SymmetricGroup([2,3,7]); A.cartan_type()\n            ['A', 2]\n\n            sage: A = SymmetricGroup([]); A.cartan_type()\n            ['A', 0]\n        \"\"\"\n        from sage.combinat.root_system.cartan_type import CartanType\n        return CartanType(['A', max(self.degree() - 1,0)])\n\n    def coxeter_matrix(self):\n        r\"\"\"\n        Return the Coxeter matrix of ``self``.\n\n        EXAMPLES::\n\n            sage: A = SymmetricGroup([2,3,7,'a']); A.coxeter_matrix()\n            [1 3 2]\n            [3 1 3]\n            [2 3 1]\n        \"\"\"\n        return self.cartan_type().coxeter_matrix()\n\n    def simple_reflection(self, i):\n        r\"\"\"\n        For `i` in the index set of ``self``, this returns the\n        elementary transposition `s_i = (i,i+1)`.\n\n        EXAMPLES::\n\n            sage: A = SymmetricGroup(5)\n            sage: A.simple_reflection(3)\n            (3,4)\n\n            sage: A = SymmetricGroup([2,3,7])\n            sage: A.simple_reflections()\n            Finite family {2: (2,3), 3: (3,7)}\n        \"\"\"\n        return self([(i, self._domain[self._domain.index(i)+1])], check=False)\n\n    def reflections(self):\n        \"\"\"\n        Return the list of all reflections in ``self``.\n\n        EXAMPLES::\n\n            sage: A = SymmetricGroup(3)\n            sage: A.reflections()\n            [(1,2), (1,3), (2,3)]\n        \"\"\"\n        from itertools import combinations\n        dom = self._domain\n        return [self([(i, j)], check=False) for i, j in combinations(dom, 2)]\n\n    def young_subgroup(self, comp):\n        \"\"\"\n        Return the Young subgroup associated with the composition ``comp``.\n\n        EXAMPLES::\n\n            sage: S = SymmetricGroup(8)\n            sage: c = Composition([2,2,2,2])\n            sage: S.young_subgroup(c)\n            Subgroup of (Symmetric group of order 8! as a permutation group)\n             generated by [(7,8), (5,6), (3,4), (1,2)]\n\n            sage: S = SymmetricGroup(['a','b','c'])\n            sage: S.young_subgroup([2,1])\n            Subgroup of (Symmetric group of order 3! as a permutation group)\n             generated by [('a','b')]\n\n            sage: Y = S.young_subgroup([2,2,2,2,2])\n            Traceback (most recent call last):\n            ...\n            ValueError: The composition is not of expected size\n        \"\"\"\n        if sum(comp) != self.degree():\n            raise ValueError('The composition is not of expected size')\n\n        domain = self._domain\n        gens = []\n        pos = 0\n        for c in comp:\n            for i in range(c - 1):\n                gens.append(self((domain[pos + i], domain[pos + i + 1])))\n            pos += c\n\n        return self.subgroup(gens)\n\n    def major_index(self, parameter=None):\n        r\"\"\"\n        Return the *major index generating polynomial* of ``self``,\n        which is a gadget counting the elements of ``self`` by major\n        index.\n\n        INPUT:\n\n        - ``parameter`` -- an element of a ring; the result is\n          more explicit with a formal variable (default:\n          element ``q`` of Univariate Polynomial Ring in ``q`` over\n          Integer Ring)\n\n        .. MATH::\n\n            P(q) = \\sum_{g\\in S_n} q^{ \\operatorname{major\\ index}(g) }\n\n        EXAMPLES::\n\n            sage: S4 = SymmetricGroup(4)\n            sage: S4.major_index()\n            q^6 + 3*q^5 + 5*q^4 + 6*q^3 + 5*q^2 + 3*q + 1\n            sage: K.<t> = QQ[]\n            sage: S4.major_index(t)\n            t^6 + 3*t^5 + 5*t^4 + 6*t^3 + 5*t^2 + 3*t + 1\n        \"\"\"\n        from sage.combinat.q_analogues import q_factorial\n        return q_factorial(self.degree(), parameter)\n\n    def conjugacy_classes_representatives(self):\n        \"\"\"\n        Return a complete list of representatives of conjugacy classes in\n        a permutation group `G`.\n\n        Let `S_n` be the symmetric group on `n` letters. The conjugacy\n        classes are indexed by partitions `\\lambda` of `n`. The ordering\n        of the conjugacy classes is reverse lexicographic order of\n        the partitions.\n\n        EXAMPLES::\n\n            sage: G = SymmetricGroup(5)\n            sage: G.conjugacy_classes_representatives()\n            [(), (1,2), (1,2)(3,4), (1,2,3), (1,2,3)(4,5),\n             (1,2,3,4), (1,2,3,4,5)]\n\n        ::\n\n            sage: S = SymmetricGroup(['a','b','c'])\n            sage: S.conjugacy_classes_representatives()\n            [(), ('a','b'), ('a','b','c')]\n\n        TESTS:\n\n        Check some border cases::\n\n            sage: S = SymmetricGroup(0)\n            sage: S.conjugacy_classes_representatives()\n            [()]\n            sage: S = SymmetricGroup(1)\n            sage: S.conjugacy_classes_representatives()\n            [()]\n        \"\"\"\n        from sage.combinat.partition import Partitions_n\n        from sage.groups.perm_gps.symgp_conjugacy_class import default_representative\n        n = len(self.domain())\n        return [ default_representative(la, self)\n                 for la in reversed(Partitions_n(n)) ]\n\n    def conjugacy_classes_iterator(self):\n        \"\"\"\n        Iterate over the conjugacy classes of ``self``.\n\n        EXAMPLES::\n\n            sage: G = SymmetricGroup(5)\n            sage: list(G.conjugacy_classes_iterator()) == G.conjugacy_classes()\n            True\n        \"\"\"\n        from sage.combinat.partition import Partitions_n\n        from sage.groups.perm_gps.symgp_conjugacy_class import SymmetricGroupConjugacyClass\n        P = Partitions_n(len(self.domain()))\n        for la in reversed(P):\n            yield SymmetricGroupConjugacyClass(self, la)\n\n    def conjugacy_classes(self):\n        \"\"\"\n        Return a list of the conjugacy classes of ``self``.\n\n        EXAMPLES::\n\n            sage: G = SymmetricGroup(5)\n            sage: G.conjugacy_classes()\n            [Conjugacy class of cycle type [1, 1, 1, 1, 1] in\n                 Symmetric group of order 5! as a permutation group,\n             Conjugacy class of cycle type [2, 1, 1, 1] in\n                 Symmetric group of order 5! as a permutation group,\n             Conjugacy class of cycle type [2, 2, 1] in\n                 Symmetric group of order 5! as a permutation group,\n             Conjugacy class of cycle type [3, 1, 1] in\n                 Symmetric group of order 5! as a permutation group,\n             Conjugacy class of cycle type [3, 2] in\n                 Symmetric group of order 5! as a permutation group,\n             Conjugacy class of cycle type [4, 1] in\n                 Symmetric group of order 5! as a permutation group,\n             Conjugacy class of cycle type [5] in\n                 Symmetric group of order 5! as a permutation group]\n        \"\"\"\n        return list(self.conjugacy_classes_iterator())\n\n    def conjugacy_class(self, g):\n        r\"\"\"\n        Return the conjugacy class of ``g`` inside the symmetric\n        group ``self``.\n\n        INPUT:\n\n        - ``g`` -- a partition or an element of the symmetric group ``self``\n\n        OUTPUT:\n\n        A conjugacy class of a symmetric group.\n\n        EXAMPLES::\n\n            sage: G = SymmetricGroup(5)\n            sage: g = G((1,2,3,4))\n            sage: G.conjugacy_class(g)\n            Conjugacy class of cycle type [4, 1] in\n             Symmetric group of order 5! as a permutation group\n        \"\"\"\n        from sage.groups.perm_gps.symgp_conjugacy_class import SymmetricGroupConjugacyClass\n        return SymmetricGroupConjugacyClass(self, g)\n\n    def algebra(self, base_ring, category=None):\n        \"\"\"\n        Return the symmetric group algebra associated to ``self``.\n\n        INPUT:\n\n        - ``base_ring`` -- a ring\n        - ``category`` -- a category (default: the category of ``self``)\n\n        If ``self`` is the symmetric group on `1,\\ldots,n`, then this\n        is special cased to take advantage of the features in\n        :class:`SymmetricGroupAlgebra`. Otherwise the usual group\n        algebra is returned.\n\n        EXAMPLES::\n\n            sage: S4 = SymmetricGroup(4)\n            sage: S4.algebra(QQ)\n            Symmetric group algebra of order 4 over Rational Field\n\n            sage: S3 = SymmetricGroup([1,2,3])\n            sage: A = S3.algebra(QQ); A\n            Symmetric group algebra of order 3 over Rational Field\n            sage: a = S3.an_element(); a\n            (1,2,3)\n            sage: A(a)\n            (1,2,3)\n\n        We illustrate the choice of the category::\n\n            sage: A.category()\n            Join of Category of coxeter group algebras over Rational Field\n                and Category of finite group algebras over Rational Field\n            sage: A = S3.algebra(QQ, category=Semigroups())\n            sage: A.category()\n            Category of finite dimensional semigroup algebras over Rational Field\n\n        In the following case, a usual group algebra is returned:\n\n            sage: S = SymmetricGroup([2,3,5])\n            sage: S.algebra(QQ)\n            Group algebra of Symmetric group of order 3! as a permutation group over Rational Field\n            sage: a = S.an_element(); a\n            (2,3,5)\n            sage: S.algebra(QQ)(a)\n            B[(2,3,5)]\n        \"\"\"\n        from sage.combinat.symmetric_group_algebra import SymmetricGroupAlgebra\n        domain = self.domain()\n        if list(domain) == range(1, len(domain)+1):\n            return SymmetricGroupAlgebra(base_ring, self, category=category)\n        else:\n            return super(SymmetricGroup, self).algebra(base_ring)\n\n    def _element_class(self):\n        r\"\"\"\n        Return the class to be used for creating elements of this group.\n\n        EXAMPLE::\n\n            sage: SymmetricGroup(17)._element_class()\n            <type 'sage.groups.perm_gps.permgroup_element.SymmetricGroupElement'>\n        \"\"\"\n        return SymmetricGroupElement\n"}}︡{"done":true}︡
︠4a005dd8-7580-48af-a878-a04a044fa410︠
euler_phi.plot(1,3000, join=False, pointsize = 5)
︡d13bafdc-bc6d-412b-94be-16bbb3fbaa1b︡{"file":{"filename":"/projects/a3801a5c-c6a5-4856-9e32-b6a99a7d2600/.sage/temp/compute5-us/26075/tmp_59rZDc.svg","show":true,"text":null,"uuid":"20b504c6-77c0-44e6-9548-15a758f32172"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠9c4445a3-f712-4c4f-88dc-7f057dd221a2︠
S=[1]
for i in (1..20):
    S.append(n(3 - 1/S[i-1]))
︡8d76c9f7-880e-4e7a-9bd2-8264f60bcf40︡{"done":true}︡
︠7721f4ad-fd8e-4fc8-b3de-407fd11e580a︠
S
︡47274b2e-1939-4ede-83a4-992a900d312a︡{"stdout":"[1, 2.00000000000000, 2.50000000000000, 2.60000000000000, 2.61538461538462, 2.61764705882353, 2.61797752808989, 2.61802575107296, 2.61803278688525, 2.61803381340013, 2.61803396316671, 2.61803398501736, 2.61803398820533, 2.61803398867044, 2.61803398873830, 2.61803398874820, 2.61803398874965, 2.61803398874986, 2.61803398874989, 2.61803398874989, 2.61803398874989]\n"}︡{"done":true}︡
︠f633dd23-4f72-4c99-9eea-885790077231︠
list_plot(S)
︡3c609388-70f6-4740-be9d-d6cdb96054a9︡{"file":{"filename":"/projects/a3801a5c-c6a5-4856-9e32-b6a99a7d2600/.sage/temp/compute5-us/26075/tmp_SDVFU2.svg","show":true,"text":null,"uuid":"58018215-ec58-4396-ba84-dba6d6919473"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠80518631-db87-4790-8d63-b7ab66e0f6fc︠
plot(x^2 - 3* x +1,(x,0,5))
︡0570a5a3-bb83-4ffc-8356-caad4ac6da1e︡{"file":{"filename":"/projects/a3801a5c-c6a5-4856-9e32-b6a99a7d2600/.sage/temp/compute5-us/26075/tmp_dSUztA.svg","show":true,"text":null,"uuid":"49191395-4745-4b70-a837-15dff71342c1"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠9c954df7-1b59-49aa-8659-9cca63a64f30︠
var('a')
eq = a^2 - 3*a +1 == 0
︡1c7ac5c8-7dd0-4142-adc5-91f075c2b559︡{"stdout":"a\n"}︡{"done":true}︡
︠ae29ac2e-b1b6-46d2-80c6-001960c832c3︠
S = eq.solve(a)
latex(S)
︡22bff1e9-4940-4c80-990d-0f2b2d797e65︡{"stdout":"\\left[a = -\\frac{1}{2} \\, \\sqrt{5} + \\frac{3}{2}, a = \\frac{1}{2} \\, \\sqrt{5} + \\frac{3}{2}\\right]\n"}︡{"done":true}︡
︠c1859221-e80b-426d-b7b7-f63e8e316366︠
S[1].rhs().n()
︡aa31a461-8191-4035-be09-81db703c041a︡{"stdout":"2.61803398874989\n"}︡{"done":true}︡
︠6492b3ad-0890-437f-9c04-3576fb7bb2ads︠
r=0.9
X=[1.0]
for i in range(1,10):
    X.append(2/3 * X[i-1] + 2/(3*X[i-1]^2))
︡d240650b-490f-44ca-a666-dcac4a54825b︡{"done":true}︡
︠0090f066-7bcd-45cb-8bfc-bdfed34ae851s︠
X
︡c679428d-c10d-4002-a377-614364d5f285︡{"stdout":"[1.00000000000000, 1.33333333333333, 1.26388888888889, 1.25993349344998, 1.25992105001777, 1.25992104989487, 1.25992104989487, 1.25992104989487, 1.25992104989487, 1.25992104989487]\n"}︡{"done":true}︡
︠0a349c4f-cfba-4746-b1e9-da730e481e95s︠
list_plot(X, size=2)
︡5ba141a1-86a2-4e7f-bf6c-7915670a3d00︡{"file":{"filename":"/projects/a3801a5c-c6a5-4856-9e32-b6a99a7d2600/.sage/temp/compute5-us/9486/tmp_zT6FOe.svg","show":true,"text":null,"uuid":"1b70668a-7a35-4e06-adc6-da5ce3907b6b"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠d2f56757-7699-4e10-b9c8-d415923b2fed︠
X
︡7e2fb037-41e0-4161-b7e2-6c67cd9ee779︡{"stdout":"[2, 1, 1/2, 2/5, 5/13, 13/34, 34/89, 89/233, 233/610, 610/1597]\n"}︡{"done":true}︡
︠2f4cef03-0346-4c29-a396-1917a78a8d64s︠
var('n')
︡43f617eb-2d48-4c42-af66-f7dda735479b︡{"stdout":"n\n"}︡{"done":true}︡
︠3ec90eca-6d60-4d28-bb4f-6fefd172e789s︠
term = 1/n + 2/(n+1) - 1/(n+3) - 2/(n+4)
term.show()
︡438f1294-6e6f-4047-ba75-a858df7c7227︡{"html":"<div align='center'>$\\displaystyle -\\frac{2}{n + 4} - \\frac{1}{n + 3} + \\frac{2}{n + 1} + \\frac{1}{n}$</div>"}︡{"done":true}︡
︠87361a4f-be54-4d59-a9d0-6486e3e1712bs︠
term.factor().show()
︡e811fee1-931f-4c74-8a47-c24c16836c44︡{"html":"<div align='center'>$\\displaystyle \\frac{3 \\, {\\left(3 \\, n^{2} + 11 \\, n + 4\\right)}}{{\\left(n + 4\\right)} {\\left(n + 3\\right)} {\\left(n + 1\\right)} n}$</div>"}︡{"done":true}︡
︠3d08b5a9-ddce-4cac-a711-68accf64284fs︠
latex(term.factor())
︡df12ca75-3010-42fc-822d-7b49f3b462fa︡{"stdout":"\\frac{3 \\, {\\left(3 \\, n^{2} + 11 \\, n + 4\\right)}}{{\\left(n + 4\\right)} {\\left(n + 3\\right)} {\\left(n + 1\\right)} n}\n"}︡{"done":true}︡
︠9bcf68b3-da91-4d7d-9b00-be960c38fc36s︠
term1 = 2/(n+1) - 2/(n+5)
term1.show()
term1.factor().show()
︡5b186993-812b-44bc-8b45-674923cd5030︡{"html":"<div align='center'>$\\displaystyle -\\frac{2}{n + 5} + \\frac{2}{n + 1}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{8}{{\\left(n + 5\\right)} {\\left(n + 1\\right)}}$</div>"}︡{"done":true}︡
︠37473d25-0d2f-467c-a6fb-d393be21df85s︠
term2 = 3/(n-1) - 3/(n+2)
term2.show()
term2.factor().show()
︡f8ddd277-e6cd-4ed5-8604-d8b06fa80fdd︡{"html":"<div align='center'>$\\displaystyle -\\frac{3}{n + 2} + \\frac{3}{n - 1}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{9}{{\\left(n + 2\\right)} {\\left(n - 1\\right)}}$</div>"}︡{"done":true}︡
︠9dcdc8f6-dd0d-49bf-ac6e-88f10ec87ae5s︠
term2.denominator().expand()
︡e35d4866-bf36-467c-addc-0a8f3e9607a2︡{"stdout":"n^2 + n - 2\n"}︡{"done":true}︡
︠75011ff9-3f29-4bd4-9c89-bf6e8230bf54s︠
term3 = 3/(n+1) - 4/(n+5)
term3.show()
term3.factor().show()
︡4f9a361b-df26-463b-af60-08b040af44af︡{"html":"<div align='center'>$\\displaystyle -\\frac{4}{n + 5} + \\frac{3}{n + 1}$</div>"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{n - 11}{{\\left(n + 5\\right)} {\\left(n + 1\\right)}}$</div>"}︡{"done":true}︡
︠deeb9fed-9ebc-4602-bac1-6088c8eb18f8s︠
factor(7432734985)
︡d3f435f3-f66b-4d43-83e1-3eccfbab7dc4︡{"stdout":"5 * 13 * 17 * 131 * 51347\n"}︡{"done":true}︡
︠43dade09-c160-4ef9-93ab-ebd496e13b97s︠
is_prime(23487623874687653)
︡f2e00ce1-072a-4b34-a695-65f70014cbc5︡{"stdout":"True\n"}︡{"done":true}︡
︠b58a2e64-a857-4fcd-a89e-b779ac045fb7s︠
factor(23487623874687653)
︡16fff71d-e271-417d-9d75-e31665f366fa︡{"stdout":"23487623874687653\n"}︡{"done":true}︡
︠d533d8ef-ef53-4e01-bf75-7993a4eac7f4s︠
primes(1,100)
︡11d1ee70-b369-4522-87b5-d4dcf8d5a704︡{"stdout":"<generator object primes at 0x7fa145fe0500>\n"}︡{"done":true}︡
︠f5345941-4ba8-42a2-b7c7-8b5f51cbbcc8s︠
for p in primes(1,100):
    if is_prime(2^p - 1):
        2^p - 1
︡ad8c0858-e5b9-492b-9aa3-4ae7547b0db0︡{"stdout":"3\n7\n31\n127\n8191\n131071\n524287\n2147483647\n2305843009213693951\n618970019642690137449562111\n"}︡{"done":true}︡
︠6046cc13-d8f5-4f4b-ad84-06094c352910s︠
Z26 = IntegerModRing(26)
︡3a542215-ae43-467c-a74f-519286d07051︡{"done":true}︡
︠d18a9d89-f20a-472a-84ea-4863740c9677︠

︡adf67a86-cbad-4318-83ba-9d351934df1c︡
︠d6c4b540-bf4f-430d-808d-7d33d73c0916s︠
a = Z26(19)
b = Z26(17)
︡cd68bcf7-7e9b-41b3-9e4b-7aecf6ab8043︡{"done":true}︡
︠dd630e72-43c7-44ad-9576-5f83c31aea90s︠
type(a)
︡1bf7f913-ed6a-4cb5-8919-5c6b98bcf935︡{"stdout":"<type 'sage.rings.finite_rings.integer_mod.IntegerMod_int'>\n"}︡{"done":true}︡
︠729475b8-b285-4fbb-85ae-0851efb56c98s︠
type(19)
︡a21f7a06-b776-4a6e-a6e2-e6178ecca737︡{"stdout":"<type 'sage.rings.integer.Integer'>\n"}︡{"done":true}︡
︠1724bef9-a433-4a7f-ba9b-ce348a89b4abs︠
a
︡af94de55-a15e-49ae-a665-ddbe5a914266︡{"stdout":"19\n"}︡{"done":true}︡
︠30109ec1-8e33-40fd-ba59-13294738dddcs︠
b
︡714857fb-18b2-4111-bc59-d918a1157ca2︡{"stdout":"17\n"}︡{"done":true}︡
︠af064c08-7b6d-497f-9f31-f8b99497822cs︠
a*b
︡4abf8747-7d0b-4353-b1b2-c4ade40738f3︡{"stdout":"11\n"}︡{"done":true}︡
︠350ce894-4d58-44e2-afa5-783e98fda620s︠
var('n')
sum(2/3 * (1/3)^(n+1),n,1,oo)
︡318bcee8-b919-4594-b673-c46b035dc149︡{"stdout":"n\n"}︡{"stdout":"1/9\n"}︡{"done":true}︡
︠9dd07316-e2fa-48a4-a2b8-327e661d5c8bs︠
sum?
︡cbc8333e-2bde-4ec6-9fe5-2af164f88331︡{"code":{"filename":null,"lineno":-1,"mode":"text/x-rst","source":"File: /projects/sage/sage-7.3/local/lib/python2.7/site-packages/sage/misc/functional.py\nSignature : sum(*args, **kwds)\nDocstring :\nReturns the symbolic sum sum_{v = a}^b expression with respect to\nthe variable v with endpoints a and b.\n\nINPUT:\n\n* \"expression\" - a symbolic expression\n\n* \"v\" - a variable or variable name\n\n* \"a\" - lower endpoint of the sum\n\n* \"b\" - upper endpoint of the sum\n\n* \"algorithm\" - (default: \"'maxima'\")  one of\n\n  * \"'maxima'\" - use Maxima (the default)\n\n  * \"'maple'\" - (optional) use Maple\n\n  * \"'mathematica'\" - (optional) use Mathematica\n\n  * \"'giac'\" - (optional) use Giac\n\nEXAMPLES:\n\n   sage: k, n = var('k,n')\n   sage: sum(k, k, 1, n).factor()\n   1/2*(n + 1)*n\n\n   sage: sum(1/k^4, k, 1, oo)\n   1/90*pi^4\n\n   sage: sum(1/k^5, k, 1, oo)\n   zeta(5)\n\nWarning: This function only works with symbolic expressions. To\n  sum any other objects like list elements or function return\n  values, please use python summation, see\n  http://docs.python.org/library/functions.html#sumIn particular,\n  this does not work:\n\n     sage: n = var('n')\n     sage: list=[1,2,3,4,5]\n     sage: sum(list[n],n,0,3)\n     Traceback (most recent call last):\n     ...\n     TypeError: unable to convert n to an integer\n\n  Use python \"sum()\" instead:\n\n     sage: sum(list[n] for n in range(4))\n     10\n\n  Also, only a limited number of functions are recognized in\n  symbolic sums:\n\n     sage: sum(valuation(n,2),n,1,5)\n     Traceback (most recent call last):\n     ...\n     TypeError: unable to convert n to an integer\n\n  Again, use python \"sum()\":\n\n     sage: sum(valuation(n+1,2) for n in range(5))\n     3\n\n  (now back to the Sage \"sum\" examples)\n\nA well known binomial identity:\n\n   sage: sum(binomial(n,k), k, 0, n)\n   2^n\n\nThe binomial theorem:\n\n   sage: x, y = var('x, y')\n   sage: sum(binomial(n,k) * x^k * y^(n-k), k, 0, n)\n   (x + y)^n\n\n   sage: sum(k * binomial(n, k), k, 1, n)\n   2^(n - 1)*n\n\n   sage: sum((-1)^k*binomial(n,k), k, 0, n)\n   0\n\n   sage: sum(2^(-k)/(k*(k+1)), k, 1, oo)\n   -log(2) + 1\n\nAnother binomial identity (https://trac.sagemath.org/7952):\n\n   sage: t,k,i = var('t,k,i')\n   sage: sum(binomial(i+t,t),i,0,k)\n   binomial(k + t + 1, t + 1)\n\nSumming a hypergeometric term:\n\n   sage: sum(binomial(n, k) * factorial(k) / factorial(n+1+k), k, 0, n)\n   1/2*sqrt(pi)/factorial(n + 1/2)\n\nWe check a well known identity:\n\n   sage: bool(sum(k^3, k, 1, n) == sum(k, k, 1, n)^2)\n   True\n\nA geometric sum:\n\n   sage: a, q = var('a, q')\n   sage: sum(a*q^k, k, 0, n)\n   (a*q^(n + 1) - a)/(q - 1)\n\nThe geometric series:\n\n   sage: assume(abs(q) < 1)\n   sage: sum(a*q^k, k, 0, oo)\n   -a/(q - 1)\n\nA divergent geometric series.  Don't forget to forget your\nassumptions:\n\n   sage: forget()\n   sage: assume(q > 1)\n   sage: sum(a*q^k, k, 0, oo)\n   Traceback (most recent call last):\n   ...\n   ValueError: Sum is divergent.\n\nThis summation only Mathematica can perform:\n\n   sage: sum(1/(1+k^2), k, -oo, oo, algorithm = 'mathematica')     # optional - mathematica\n   pi*coth(pi)\n\nUse Maple as a backend for summation:\n\n   sage: sum(binomial(n,k)*x^k, k, 0, n, algorithm = 'maple')      # optional - maple\n   (x + 1)^n\n\nPython ints should work as limits of summation\n(https://trac.sagemath.org/9393):\n\n   sage: sum(x, x, 1r, 5r)\n   15\n\nNote:\n\n  1. Sage can currently only understand a subset of the output\n     of Maxima, Maple and Mathematica, so even if the chosen\n     backend can perform the summation the result might not be\n     convertable into a Sage expression."}}︡{"done":true}︡
︠c8d516ee-6e86-4d01-a21b-d86c476489b8s︠
var('n')
︡ca8a85af-7cbb-4aa8-9fb0-93a7493e2992︡{"stdout":"n\n"}︡{"done":true}︡
︠87ad6115-061e-46c8-8068-e9cc7b11816cs︠
L = sum(2^n / factorial(n),n,1,oo)
L
︡8b7bb5ed-63f1-43af-9653-c626d6020348︡{"stdout":"2*e*sinh(1)\n"}︡{"done":true}︡
︠55f631c3-1252-402d-83ee-3d736588ce33s︠
R = RealField()
︡6538794e-4d08-4d5b-be57-d1b1f3d295cd︡{"done":true}︡
︠21e51d5c-9138-45d7-bd4d-04b6be8a2615s︠
R(L)
︡0a14fab4-80b6-486b-9e3a-893e8c55f333︡{"stdout":"6.38905609893065\n"}︡{"done":true}︡
︠64130ab3-d64f-4296-8074-bf7c7ead544bs︠
f(x)=sinh(x)
f
︡3a2c0d28-3b08-4828-8b98-46ea1cf91c47︡{"stdout":"x |--> sinh(x)\n"}︡{"done":true}︡
︠eefc6ce6-5010-4c4c-845e-eddda8ff62bas︠
f.series(x)
︡43f2b530-1618-4f24-8996-1a4c0aec0bed︡{"stdout":"x |--> 1*x + 1/6*x^3 + 1/120*x^5 + 1/5040*x^7 + 1/362880*x^9 + 1/39916800*x^11 + 1/6227020800*x^13 + 1/1307674368000*x^15 + 1/355687428096000*x^17 + 1/121645100408832000*x^19 + Order(x^20)\n"}︡{"done":true}︡
︠a7122664-017d-4c14-9314-aedfbf0f7264s︠
n=6
sum(j^(-2) for j in range(1,n+1))
︡08e8aef4-5f05-4c3c-ac0a-7e52046d7daf︡{"stdout":"5369/3600\n"}︡{"done":true}︡
︠dc6fa663-774e-4be0-838d-63ef401b5125s︠
show(integral(sqrt(x/(1-x)),x))
simplify(integral(sqrt(x/(1-x)),x))
︡a6437378-ec56-4a21-ab85-b2a16c703e87︡{"html":"<div align='center'>$\\displaystyle \\frac{\\sqrt{-\\frac{x}{x - 1}}}{\\frac{x}{x - 1} - 1} + \\arctan\\left(\\sqrt{-\\frac{x}{x - 1}}\\right)$</div>"}︡{"stdout":"sqrt(-x/(x - 1))/(x/(x - 1) - 1) + arctan(sqrt(-x/(x - 1)))\n"}︡{"done":true}︡
︠6aea489c-fe5a-4a38-8ad5-dbe0c5760ba7s︠
factor(sqrt(-x/(x - 1))/(x/(x - 1) - 1) )
︡2f96e6b3-72f8-486a-82c0-f503c6d5fff6︡{"stdout":"(x - 1)*sqrt(-x/(x - 1))\n"}︡{"done":true}︡
︠791e52ec-bed9-44a7-abe4-d03dce50d6cbs︠
Xseries = [1/n^2 for n in range(1,101)]
Xpartials = [sum(Xseries[:k]) for k in range(1,100)]
P=list_plot(Xpartials)
P
P.save_image(filename='sageseries.png')
︡23770c90-7bef-41ab-a893-3b6b4eb3c648︡{"file":{"filename":"/home/user/.sage/temp/project-a3801a5c-c6a5-4856-9e32-b6a99a7d2600/10762/tmp_tFShQM.svg","show":true,"text":null,"uuid":"51b9003d-3e45-4ded-8105-440f96062505"},"once":false}︡{"done":true}︡
︠eef11de4-aaf3-4387-9719-a0236fbab985s︠
L=[1,2,3]
L[:2]
︡b4e00fbf-5c70-4f75-87ca-2f8e0e245ca4︡{"stdout":"[1, 2]\n"}︡{"done":true}︡
︠9f35cd14-1e20-4538-ad02-dc81283cfba9︠









